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

import br.ufjf.dcc193.trabalho.model.Atividade;
import br.ufjf.dcc193.trabalho.model.Sede;
import br.ufjf.dcc193.trabalho.repository.AtividadeRepository;
import br.ufjf.dcc193.trabalho.repository.SedeRepository;



@Controller
public class ControllerAtividade {
    @Autowired
    AtividadeRepository atividadeRep;

    @Autowired
    private SedeRepository sedeRep;

    @GetMapping({"atividades.html"})
    public ModelAndView atividades() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("atividades");
        List<Sede> sedes = sedeRep.findAll();
        mv.addObject("sedes",sedes);
        List<Atividade> atividades = atividadeRep.findAll();
        mv.addObject("atividades", atividades);
        return mv;
    }

    @GetMapping("atividades.html/cadastrar")
    public RedirectView cadastrarMembro()
    {
        
        return new RedirectView("/atividades.html?cadastrar=true");

    }

    @PostMapping("atividade_cadastrar.html")
    public RedirectView atividadeCadastrarPost(@Valid  Atividade atividade) {
        atividadeRep.save(atividade);
        return new RedirectView("/atividades.html?cadastrado=true");
    }
    
    @GetMapping("atividade_editar.html/{id}")
    public ModelAndView membroAlterar(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView();
        List<Sede> sedes = sedeRep.findAll();
        mv.addObject("sedes",sedes);
        mv.addObject("atividade", atividadeRep.getOne(id));
        mv.setViewName("atividade_editar");
        return mv;
    }

    @PostMapping("atividade_editar.html")
    public RedirectView membroAlterarPost(@Valid  Atividade atividade) {
        atividadeRep.save(atividade);
        return new RedirectView("/atividades.html?alterado=true");
    }
}