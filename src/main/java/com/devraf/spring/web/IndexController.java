package com.devraf.spring.web;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Rafael on 09/04/2015.
 */
@Controller
public class IndexController {

    private static final Logger logger = Logger.getLogger(IndexController.class);

    @RequestMapping(value={"/","/home"}, method = RequestMethod.GET)
    public String indexView(Model model)throws Exception {
        logger.info("\n <-###############-> \n Page Index: rute{'/','/home'} iniciado correctamente \n <-###############->");
        return "index";
    }
}
