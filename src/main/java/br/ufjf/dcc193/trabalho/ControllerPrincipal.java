
 package br.ufjf.dcc193.trabalho;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ControllerPrincipal {
@RequestMapping("index.html")
public String inicial()
{
    return "inicio.jsp";
}
    
}