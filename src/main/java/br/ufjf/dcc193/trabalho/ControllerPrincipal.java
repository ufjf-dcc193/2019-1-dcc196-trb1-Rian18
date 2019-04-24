
package br.ufjf.dcc193.trabalho;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ControllerPrincipal {
    @RequestMapping("index.html")
    public ModelAndView inicial ()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("inicio");
        return mv;
    }

   
    
}