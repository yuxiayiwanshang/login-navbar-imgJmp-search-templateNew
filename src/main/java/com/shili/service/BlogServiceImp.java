package com.shili.service;

import com.shili.model.BlogEntity;
import com.shili.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yuxia on 17-4-8.
 */
@Service
public class BlogServiceImp implements BlogService {

    @Autowired
    BlogRepository blogRepository;

    @Override
    public List<BlogEntity> findAll() {
        BlogEntity blogEntity = new BlogEntity();
        List<BlogEntity> blogEntityList = blogRepository.findAll();
        return blogEntityList;
    }

    @Override
    public List<BlogEntity> addOne(String title, String content) {
        BlogEntity blogEntity = new BlogEntity();
        blogEntity.setTitle(title);
        blogEntity.setContent(content);
        blogRepository.save(blogEntity);
        List<BlogEntity> blogEntityList = blogRepository.findAll();
        return blogEntityList;
    }

    @Override
    public List<BlogEntity> delete(String sid) {
        Integer id = Integer.parseInt(sid);
        BlogEntity blogEntity =  blogRepository.findOne(id);
        blogRepository.delete(id);
        List<BlogEntity> blogEntityList = blogRepository.findAll();
        return blogEntityList;
    }
}
