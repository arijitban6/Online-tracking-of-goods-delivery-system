package com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery;

/**
 * Created by ariji on 1/26/2018.
 */

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.DeliveryAddressEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliveryAddrressRepository extends JpaRepository<DeliveryAddressEntity,String> {
}
