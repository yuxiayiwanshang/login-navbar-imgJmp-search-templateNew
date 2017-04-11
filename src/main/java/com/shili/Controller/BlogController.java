package com.shili.Controller;

import com.shili.model.BlogEntity;
import com.shili.repository.BlogRepository;
import com.shili.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by yuxia on 17-4-8.
 */
@Controller
public class BlogController {
    @Autowired
    BlogRepository blogRepository;

    @Autowired
    BlogService blogService;

    @RequestMapping(value = "/blog",method = RequestMethod.GET)
    public String getBlog(ModelMap modelMap){
        List<BlogEntity> blogEntityList = blogService.findAll();
        modelMap.addAttribute("bloglist",blogEntityList);
        return "BlogView";
    }

    @RequestMapping(value = "/blog.add",method = RequestMethod.GET)
    public String addBlog(ModelMap modelMap){
            return "AddBlog";
    }

    @RequestMapping(value = "/blog.add",method = RequestMethod.POST)
    public String addBlogPost(@RequestParam("title") String title,@RequestParam("content") String content, ModelMap modelMap){
        if(title == null || content ==null) {
            return "AddBlog";
        }else {
            List<BlogEntity> blogEntityList = blogService.addOne(title,content);
            modelMap.addAttribute("bloglist", blogEntityList);
            return "BlogView";
        }
    }

    @RequestMapping(value = "/blog.delete",method = RequestMethod.GET)
    public String deleteBlog(@RequestParam("id") String sid,ModelMap modelMap){
        List<BlogEntity> blogEntityList = blogService.delete(sid);
        modelMap.addAttribute("bloglist",blogEntityList);
        return "BlogView";
    }
}
