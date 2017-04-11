package com.shili.Controller;

import com.shili.model.User;
import com.shili.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by yuxia on 17-4-7.
 */
@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public String getUser(Model model){
        int i=0;
        String att = "q";
        User user = new User();
        List<User> userList= userRepository.findAll();
        for (User u: userList) {
            model.addAttribute("user" + i, "name: "+u.getUsername()+"  userid:  "+u.getId());
            i++;
        }

        model.addAttribute("user numble: ",userList.size());

        return "UserView";
    }
}
