package com.shili.repository;

import com.shili.model.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by yuxia on 17-4-8.
 */
public interface BlogRepository extends JpaRepository<BlogEntity,Integer> {
}
