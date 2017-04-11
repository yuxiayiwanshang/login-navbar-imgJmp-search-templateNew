package com.shili.repository;

import com.shili.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by yuxia on 17-4-7.
 */
@Repository
public interface RoleRepository extends JpaRepository<Role,Long> {
}
