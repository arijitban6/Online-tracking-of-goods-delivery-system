package com.wase.online.order.tracking.repositery;

/**
 * Created by ariji on 1/26/2018.
 */

import com.wase.online.order.tracking.model.DeliveryAddressEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliveryAddrressRepository extends JpaRepository<DeliveryAddressEntity,String> {
}
