package com.twoheart.registro.web;

import com.twoheart.moto.enums.CilindrajesMotos;
import com.twoheart.moto.enums.EstilosMoto;
import com.twoheart.moto.enums.MarcasMotos;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.Map;

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
        Map<String, Object> objetos = new HashMap<>();
        objetos.put("estilosMotos", EstilosMoto.values());
        objetos.put("marcasMotos", MarcasMotos.values());
        objetos.put("cilindrajeMotos", CilindrajesMotos.values());
        model.addAllAttributes(objetos);
        return "registro.home";
    }
}
