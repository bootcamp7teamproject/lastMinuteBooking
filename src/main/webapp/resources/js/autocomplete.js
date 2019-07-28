/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//                                                            <script>
//var autocomplete;

//var componentForm = {//
////  street_number: 'short_name',
////  route: 'long_name',
////  postal_code: 'short_name'
////};
//
//
//function initAutocomplete() {
//  // Create the autocomplete object, restricting the search predictions to
//  // geographical location types.
//  autocomplete = new google.maps.places.Autocomplete(
//      document.getElementById('autocomplete'), {types: ['geocode']});

  // Avoid paying for data that you don't need by restricting the set of
  // place fields that are returned to just the address components.
//  autocomplete.setFields(['address_component']);

  // When the user selects an address from the drop-down, populate the
  // address fields in the form.
//  autocomplete.addListener('place_changed', fillInAddress);
//}

//function fillInAddress() {//
//  // Get the place details from the autocomplete object.
////  var place = autocomplete.getPlace();
//
//
//    document.getElementById(addressAH).value =" ";
//    document.getElementById(postcodeAH).value =" ";
//
//
//  // Get each component of the address from the place details,
//  // and then fill-in the corresponding field on the form.
//  for (var i = 0; i < place.address_components.length; i++) {
//    var addressType = place.address_components[i].types[0];
//    if (componentForm[addressType]) {
//      var val = place.address_components[i][componentForm[addressType]];
//      document.getElementById(addressType).value = val;
//    }
//  }
//  document.getElementById(longitude).value = place.address_components[0].geometry.location.lat
//  document.getElementById(longitude).value = place.address_components[0].geometry.location.lng
//}
//
//
//</script>//
//
//<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu_f3LkS_va3sCwuIMwL0-loX2qMwcyzI&libraries=places&callback=initAutocomplete"
//async defer>//</script>
