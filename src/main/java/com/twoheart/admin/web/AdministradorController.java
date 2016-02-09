package com.twoheart.admin.web;

import org.apache.log4j.Logger;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Usuario on 09/02/2016.
 */
@Controller
@RequestMapping(value = {"/dashboard","/plataforma","/admin"})
public class AdministradorController {

    private static final Logger logger = Logger.getLogger(AdministradorController.class);

    @Secured("ROLE_SUPERADMIN")
    @RequestMapping(value = {"/","/home.do"}, method = RequestMethod.GET)
    public String administradorHome(Model model)throws Exception{
        logger.info("\n <-###############-> \n Page Administrador: rute{'/dashboard','/plataforma','/admin'} iniciado correctamente \n <-###############->");
        return "admin.home";
    }
}
