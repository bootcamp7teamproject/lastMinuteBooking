/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Panos
 */
@Entity
@Table(name = "hotel")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Hotel.findAll", query = "SELECT h FROM Hotel h")
    , @NamedQuery(name = "Hotel.findById", query = "SELECT h FROM Hotel h WHERE h.id = :id")
    , @NamedQuery(name = "Hotel.findByName", query = "SELECT h FROM Hotel h WHERE h.name = :name")
    , @NamedQuery(name = "Hotel.findByAddress", query = "SELECT h FROM Hotel h WHERE h.address = :address")
    , @NamedQuery(name = "Hotel.findByPostcode", query = "SELECT h FROM Hotel h WHERE h.postcode = :postcode")
    , @NamedQuery(name = "Hotel.findByStarsnumber", query = "SELECT h FROM Hotel h WHERE h.starsnumber = :starsnumber")
    , @NamedQuery(name = "Hotel.findBySiteurl", query = "SELECT h FROM Hotel h WHERE h.siteurl = :siteurl")
    , @NamedQuery(name = "Hotel.findByPhone", query = "SELECT h FROM Hotel h WHERE h.phone = :phone")
    , @NamedQuery(name = "Hotel.findByEmail", query = "SELECT h FROM Hotel h WHERE h.email = :email")
    , @NamedQuery(name = "Hotel.findByImagespath", query = "SELECT h FROM Hotel h WHERE h.imagespath = :imagespath")
    , @NamedQuery(name = "Hotel.findByLongtitude", query = "SELECT h FROM Hotel h WHERE h.longtitude = :longtitude")
    , @NamedQuery(name = "Hotel.findByLatitude", query = "SELECT h FROM Hotel h WHERE h.latitude = :latitude")
    , @NamedQuery(name = "Hotel.findByOwnerid", query = "SELECT h FROM Hotel h WHERE h.ownerid = :ownerid")})
public class Hotel implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "Postcode")
    private String postcode;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Stars_number")
    private int starsnumber;
    @Size(max = 45)
    @Column(name = "Site_url")
    private String siteurl;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "Phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 45)
    @Column(name = "Email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Images_path")
    private String imagespath;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Longtitude")
    private String longtitude;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Latitude")
    private String latitude;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Owner_id")
    private int ownerid;
    @ManyToMany(mappedBy = "hotelCollection")
    private Collection<Facilities> facilitiesCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "hotelid")
    private Collection<RoomUnavailability> roomUnavailabilityCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "hotel")
    private Collection<Rating> ratingCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "hotel")
    private Collection<RoomEquipment> roomEquipmentCollection;
    @JoinColumn(name = "Destination_id", referencedColumnName = "Id")
    @ManyToOne(optional = false)
    private Destination destinationid;
    @JoinColumn(name = "Id", referencedColumnName = "Id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private User user;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "hotelid")
    private Collection<Room> roomCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "hotel")
    private Collection<RoomStatus> roomStatusCollection;

    public Hotel() {
    }

    public Hotel(Integer id) {
        this.id = id;
    }

    public Hotel(Integer id, String name, String address, String postcode, int starsnumber, String phone, String imagespath, String longtitude, String latitude, int ownerid) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.postcode = postcode;
        this.starsnumber = starsnumber;
        this.phone = phone;
        this.imagespath = imagespath;
        this.longtitude = longtitude;
        this.latitude = latitude;
        this.ownerid = ownerid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public int getStarsnumber() {
        return starsnumber;
    }

    public void setStarsnumber(int starsnumber) {
        this.starsnumber = starsnumber;
    }

    public String getSiteurl() {
        return siteurl;
    }

    public void setSiteurl(String siteurl) {
        this.siteurl = siteurl;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImagespath() {
        return imagespath;
    }

    public void setImagespath(String imagespath) {
        this.imagespath = imagespath;
    }

    public String getLongtitude() {
        return longtitude;
    }

    public void setLongtitude(String longtitude) {
        this.longtitude = longtitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public int getOwnerid() {
        return ownerid;
    }

    public void setOwnerid(int ownerid) {
        this.ownerid = ownerid;
    }

    @XmlTransient
    public Collection<Facilities> getFacilitiesCollection() {
        return facilitiesCollection;
    }

    public void setFacilitiesCollection(Collection<Facilities> facilitiesCollection) {
        this.facilitiesCollection = facilitiesCollection;
    }

    @XmlTransient
    public Collection<RoomUnavailability> getRoomUnavailabilityCollection() {
        return roomUnavailabilityCollection;
    }

    public void setRoomUnavailabilityCollection(Collection<RoomUnavailability> roomUnavailabilityCollection) {
        this.roomUnavailabilityCollection = roomUnavailabilityCollection;
    }

    @XmlTransient
    public Collection<Rating> getRatingCollection() {
        return ratingCollection;
    }

    public void setRatingCollection(Collection<Rating> ratingCollection) {
        this.ratingCollection = ratingCollection;
    }

    @XmlTransient
    public Collection<RoomEquipment> getRoomEquipmentCollection() {
        return roomEquipmentCollection;
    }

    public void setRoomEquipmentCollection(Collection<RoomEquipment> roomEquipmentCollection) {
        this.roomEquipmentCollection = roomEquipmentCollection;
    }

    public Destination getDestinationid() {
        return destinationid;
    }

    public void setDestinationid(Destination destinationid) {
        this.destinationid = destinationid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @XmlTransient
    public Collection<Room> getRoomCollection() {
        return roomCollection;
    }

    public void setRoomCollection(Collection<Room> roomCollection) {
        this.roomCollection = roomCollection;
    }

    @XmlTransient
    public Collection<RoomStatus> getRoomStatusCollection() {
        return roomStatusCollection;
    }

    public void setRoomStatusCollection(Collection<RoomStatus> roomStatusCollection) {
        this.roomStatusCollection = roomStatusCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Hotel)) {
            return false;
        }
        Hotel other = (Hotel) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bootcamp.project.lmb.model.Hotel[ id=" + id + " ]";
    }
    
}
