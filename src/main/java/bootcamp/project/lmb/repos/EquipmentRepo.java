/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.project.lmb.repos;

import bootcamp.project.lmb.model.Equipment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Panos
 */

@Repository
public interface EquipmentRepo extends JpaRepository <Equipment, Integer> {
    
}
