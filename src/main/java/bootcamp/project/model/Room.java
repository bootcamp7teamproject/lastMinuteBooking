/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
@Table(name = "room")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Room.findAll", query = "SELECT r FROM Room r")
    , @NamedQuery(name = "Room.findById", query = "SELECT r FROM Room r WHERE r.roomPK.id = :id")
    , @NamedQuery(name = "Room.findByHotelid", query = "SELECT r FROM Room r WHERE r.roomPK.hotelid = :hotelid")
    , @NamedQuery(name = "Room.findByName", query = "SELECT r FROM Room r WHERE r.name = :name")
    , @NamedQuery(name = "Room.findBySinglebed", query = "SELECT r FROM Room r WHERE r.singlebed = :singlebed")
    , @NamedQuery(name = "Room.findByTwinbed", query = "SELECT r FROM Room r WHERE r.twinbed = :twinbed")
    , @NamedQuery(name = "Room.findByDescription", query = "SELECT r FROM Room r WHERE r.description = :description")
    , @NamedQuery(name = "Room.findByPricepernight", query = "SELECT r FROM Room r WHERE r.pricepernight = :pricepernight")})
public class Room implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected RoomPK roomPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Name")
    private String name;
    @Column(name = "Single_bed")
    private Integer singlebed;
    @Column(name = "Twin_bed")
    private Integer twinbed;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Description")
    private String description;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Price_per_night")
    private float pricepernight;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "room")
    private Collection<Reservation> reservationCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "room")
    private Collection<RoomEquipment> roomEquipmentCollection;
    @JoinColumn(name = "Hotel_id", referencedColumnName = "Id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Hotel hotel;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "room")
    private Collection<RoomStatus> roomStatusCollection;

    public Room() {
    }

    public Room(RoomPK roomPK) {
        this.roomPK = roomPK;
    }

    public Room(RoomPK roomPK, String name, String description, float pricepernight) {
        this.roomPK = roomPK;
        this.name = name;
        this.description = description;
        this.pricepernight = pricepernight;
    }

    public Room(int id, int hotelid) {
        this.roomPK = new RoomPK(id, hotelid);
    }

    public RoomPK getRoomPK() {
        return roomPK;
    }

    public void setRoomPK(RoomPK roomPK) {
        this.roomPK = roomPK;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSinglebed() {
        return singlebed;
    }

    public void setSinglebed(Integer singlebed) {
        this.singlebed = singlebed;
    }

    public Integer getTwinbed() {
        return twinbed;
    }

    public void setTwinbed(Integer twinbed) {
        this.twinbed = twinbed;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPricepernight() {
        return pricepernight;
    }

    public void setPricepernight(float pricepernight) {
        this.pricepernight = pricepernight;
    }

    @XmlTransient
    public Collection<Reservation> getReservationCollection() {
        return reservationCollection;
    }

    public void setReservationCollection(Collection<Reservation> reservationCollection) {
        this.reservationCollection = reservationCollection;
    }

    @XmlTransient
    public Collection<RoomEquipment> getRoomEquipmentCollection() {
        return roomEquipmentCollection;
    }

    public void setRoomEquipmentCollection(Collection<RoomEquipment> roomEquipmentCollection) {
        this.roomEquipmentCollection = roomEquipmentCollection;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
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
        hash += (roomPK != null ? roomPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Room)) {
            return false;
        }
        Room other = (Room) object;
        if ((this.roomPK == null && other.roomPK != null) || (this.roomPK != null && !this.roomPK.equals(other.roomPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bootcamp.project.model.Room[ roomPK=" + roomPK + " ]";
    }
    
}
