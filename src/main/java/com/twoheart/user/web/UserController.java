package com.twoheart.user.web;

import com.twoheart.user.model.User;
import com.twoheart.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * Created by Usuario on 05/02/2016.
 */
@Controller
@RequestMapping(value = {"/usuario","/user"})
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Objects> saveUser()throws Exception{
        Map<String, Objects> respuesta = new HashMap<>();
        User user = new User();
        user.setUsername("admin");
        user.setPassword("1234");
        userService.save(user);
        return respuesta;
    }
}
