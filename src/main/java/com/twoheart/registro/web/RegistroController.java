package com.twoheart.registro.web;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Usuario on 09/02/2016.
 */
@Controller
@RequestMapping(value = {"/register","/registro"})
public class RegistroController {

    private static final Logger logger = Logger.getLogger(RegistroController.class);

    @RequestMapping(value = {"/","/home.do"}, method = RequestMethod.GET)
    public String registerHome(Model model)throws Exception{
        logger.info("\n <-###############-> \n Page Registro: rute{'/register','/registro'} iniciado correctamente \n <-###############->");
        return "registro.home";
    }
}
