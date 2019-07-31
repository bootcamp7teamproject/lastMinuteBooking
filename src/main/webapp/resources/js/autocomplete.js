/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var autocomplete;
var componentForm = {
    street_number: 'short_name',
    route: 'long_name',
    postal_code: 'postal_code'
};
function initAutocomplete() {
                                                     
    autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'), {types: ['geocode']});                                                 
    autocomplete.setFields(['address_component']);                                                    
    autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
                                      
    var place = autocomplete.getPlace();
    document.getElementById(addressAH).value = " ";
    document.getElementById(postcodeAH).value = " ";
                                                    
    for (var i = 0; i < place.address_components.length; i++) {
        var addressType = place.address_components[i].types[0];
        if (componentForm[addressType]) {
            var val = place.address_components[i][componentForm[addressType]];
            document.getElementById(addressType).value = val;
        }
    }
    document.getElementById(longitude).value = place.address_components[0].geometry.location.lat
    document.getElementById(longitude).value = place.address_components[0].geometry.location.lng
}


function geolocate() {
    if (navigator.geolocation) {
        console.log(geolocate);
        navigator.geolocation.getCurrentPosition(function (position) {
            var geolocation = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            var circle = new google.maps.Circle(
                    {center: geolocation, radius: position.coords.accuracy});
            autocomplete.setBounds(circle.getBounds());
        });
    }
}

