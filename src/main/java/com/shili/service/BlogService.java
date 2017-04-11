package com.shili.service;

import com.shili.model.BlogEntity;

import java.util.List;

/**
 * Created by yuxia on 17-4-8.
 */
public interface BlogService {
    List<BlogEntity> findAll();
    List<BlogEntity> addOne(String title,String content);
    List<BlogEntity> delete(String sid);
}
