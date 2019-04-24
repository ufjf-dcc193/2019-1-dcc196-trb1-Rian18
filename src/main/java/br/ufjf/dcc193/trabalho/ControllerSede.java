package br.ufjf.dcc193.trabalho;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import br.ufjf.dcc193.trabalho.model.Sede;
import br.ufjf.dcc193.trabalho.repository.SedeRepository;


@Controller
public class ControllerSede {
    @Autowired
    SedeRepository sedeRep;

    @GetMapping({"sedes.html"})
    public ModelAndView sedes() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sedes");
        List<Sede> sedes = sedeRep.findAll();
        mv.addObject("sedes", sedes);
        return mv;
    }

    @GetMapping("sedes.html/cadastrar")
    public RedirectView cadastrarSede()
    {
        return new RedirectView("/sedes.html?cadastrar=true");

    }

    @PostMapping("sede-cadastrar.html")
    public RedirectView sedeCadastrarPost(@Valid  Sede sede) {
        sedeRep.save(sede);
        return new RedirectView("/sedes.html?cadastrado=true");
    }
    
    @GetMapping("sede_editar.html/{id}")
    public ModelAndView sedeAlterar(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("sede", sedeRep.getOne(id));
        mv.setViewName("sedes_editar");
        return mv;
    }

    @PostMapping("sede_editar.html")
    public RedirectView sedeAlterarPost(@Valid  Sede sede) {
        sedeRep.save(sede);
        return new RedirectView("/sedes.html?alterado=true");
    }

    @GetMapping("sede_deletar.html/{id}")
    public RedirectView sedeDeletar(@PathVariable Long id) {
        sedeRep.deleteById(id);
        return new RedirectView("/sedes.html?excluido=true");
    }
       
   
   
}