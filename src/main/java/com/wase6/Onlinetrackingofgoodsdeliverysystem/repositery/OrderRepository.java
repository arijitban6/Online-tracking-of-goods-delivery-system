package com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by ariji on 1/13/2018.
 */
@Repository
public interface OrderRepository extends JpaRepository<OrderEntity,String> {
}
