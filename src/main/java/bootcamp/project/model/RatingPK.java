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
public class RatingPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "Customer_id")
    private int customerid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Hotel_id")
    private int hotelid;

    public RatingPK() {
    }

    public RatingPK(int customerid, int hotelid) {
        this.customerid = customerid;
        this.hotelid = hotelid;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) customerid;
        hash += (int) hotelid;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RatingPK)) {
            return false;
        }
        RatingPK other = (RatingPK) object;
        if (this.customerid != other.customerid) {
            return false;
        }
        if (this.hotelid != other.hotelid) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bootcamp.project.model.RatingPK[ customerid=" + customerid + ", hotelid=" + hotelid + " ]";
    }
    
}
