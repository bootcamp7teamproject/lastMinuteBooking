/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Panos
 */
@Entity
@Table(name = "room_status")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RoomStatus.findAll", query = "SELECT r FROM RoomStatus r")
    , @NamedQuery(name = "RoomStatus.findByRoomid", query = "SELECT r FROM RoomStatus r WHERE r.roomStatusPK.roomid = :roomid")
    , @NamedQuery(name = "RoomStatus.findByHotelid", query = "SELECT r FROM RoomStatus r WHERE r.roomStatusPK.hotelid = :hotelid")
    , @NamedQuery(name = "RoomStatus.findByStartdate", query = "SELECT r FROM RoomStatus r WHERE r.startdate = :startdate")
    , @NamedQuery(name = "RoomStatus.findByEnddate", query = "SELECT r FROM RoomStatus r WHERE r.enddate = :enddate")
    , @NamedQuery(name = "RoomStatus.findByNotavailable", query = "SELECT r FROM RoomStatus r WHERE r.notavailable = :notavailable")})
public class RoomStatus implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected RoomStatusPK roomStatusPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Start_date")
    @Temporal(TemporalType.DATE)
    private Date startdate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "End_date")
    @Temporal(TemporalType.DATE)
    private Date enddate;
    @Column(name = "Not_available")
    private Short notavailable;
    @JoinColumn(name = "Hotel_id", referencedColumnName = "Id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Hotel hotel;
    @JoinColumn(name = "Room_id", referencedColumnName = "Id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Room room;

    public RoomStatus() {
    }

    public RoomStatus(RoomStatusPK roomStatusPK) {
        this.roomStatusPK = roomStatusPK;
    }

    public RoomStatus(RoomStatusPK roomStatusPK, Date startdate, Date enddate) {
        this.roomStatusPK = roomStatusPK;
        this.startdate = startdate;
        this.enddate = enddate;
    }

    public RoomStatus(int roomid, int hotelid) {
        this.roomStatusPK = new RoomStatusPK(roomid, hotelid);
    }

    public RoomStatusPK getRoomStatusPK() {
        return roomStatusPK;
    }

    public void setRoomStatusPK(RoomStatusPK roomStatusPK) {
        this.roomStatusPK = roomStatusPK;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Short getNotavailable() {
        return notavailable;
    }

    public void setNotavailable(Short notavailable) {
        this.notavailable = notavailable;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (roomStatusPK != null ? roomStatusPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RoomStatus)) {
            return false;
        }
        RoomStatus other = (RoomStatus) object;
        if ((this.roomStatusPK == null && other.roomStatusPK != null) || (this.roomStatusPK != null && !this.roomStatusPK.equals(other.roomStatusPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bootcamp.project.model.RoomStatus[ roomStatusPK=" + roomStatusPK + " ]";
    }
    
}
