package com.wase.online.order.tracking.repositery;

import com.wase.online.order.tracking.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by ariji on 1/13/2018.
 */
@Repository
public interface UserRepository extends JpaRepository<UserEntity, String>{
}
