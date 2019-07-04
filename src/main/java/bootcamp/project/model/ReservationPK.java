/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Panos
 */
@Embeddable
public class ReservationPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "Customer_id")
    private int customerid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Hotel_id")
    private int hotelid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Room_id")
    private int roomid;

    public ReservationPK() {
    }

    public ReservationPK(int customerid, int hotelid, int roomid) {
        this.customerid = customerid;
        this.hotelid = hotelid;
        this.roomid = roomid;
    }

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public int getHotelid() {
        return hotelid;
    }

    public void setHotelid(int hotelid) {
        this.hotelid = hotelid;
    }

    public int getRoomid() {
        return roomid;
    }

    public void setRoomid(int roomid) {
        this.roomid = roomid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) customerid;
        hash += (int) hotelid;
        hash += (int) roomid;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ReservationPK)) {
            return false;
        }
        ReservationPK other = (ReservationPK) object;
        if (this.customerid != other.customerid) {
            return false;
        }
        if (this.hotelid != other.hotelid) {
            return false;
        }
        if (this.roomid != other.roomid) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bootcamp.project.model.ReservationPK[ customerid=" + customerid + ", hotelid=" + hotelid + ", roomid=" + roomid + " ]";
    }
    
}
