package com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ariji on 1/13/2018.
 */
@Repository
public interface OrderRepository extends JpaRepository<OrderEntity,String> {

    @Query("select o from OrderEntity  o where user_email= :myparam")
    List<OrderEntity> findAllOrderByUser(@Param("myparam") String userid);
}
