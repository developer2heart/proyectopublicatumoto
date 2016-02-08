package com.twoheart.user.web;

import com.twoheart.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.support.AbstractMessageSource;
import org.springframework.context.support.MessageSourceResourceBundle;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Usuario on 05/02/2016.
 */
@Controller
@RequestMapping(value = {"/usuario","/user"})
public class UserController {


    @Autowired
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> saveUser(Model model, HttpServletRequest request, HttpServletResponse response)throws Exception{
        Map<String, Object> respuesta = new HashMap<>();
        respuesta.put("status",0);
        respuesta.put("message", "");
        return respuesta;
    }
}
