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
import br.ufjf.dcc193.trabalho.model.Membro;
import br.ufjf.dcc193.trabalho.model.Sede;
import br.ufjf.dcc193.trabalho.repository.MembroRepository;
import br.ufjf.dcc193.trabalho.repository.SedeRepository;



@Controller
public class ControllerMembros {
    @Autowired
    MembroRepository membroRep;

    @Autowired
    private SedeRepository sedeRep;

    @GetMapping({"membros.html"})
    public ModelAndView membros() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("membros");
        List<Sede> sedes = sedeRep.findAll();
        mv.addObject("sedes",sedes);
        List<Membro> membros = membroRep.findAll();
        mv.addObject("membros", membros);
        return mv;
    }

    @GetMapping("membros.html/cadastrar")
    public RedirectView cadastrarMembro()
    {
        
        return new RedirectView("/membros.html?cadastrar=true");

    }

    @PostMapping("membro_cadastrar.html")
    public RedirectView membroCadastrarPost(@Valid  Membro membro) {
        membroRep.save(membro);
        return new RedirectView("/membros.html?cadastrado=true");
    }
    
    @GetMapping("membro_editar.html/{idMembro}")
    public ModelAndView membroAlterar(@PathVariable Long idMembro) {
        ModelAndView mv = new ModelAndView();
        List<Sede> sedes = sedeRep.findAll();
        mv.addObject("sedes",sedes);
        mv.addObject("membro", membroRep.getOne(idMembro));
        mv.setViewName("membro_editar");
        return mv;
    }

    @PostMapping("membro_editar.html")
    public RedirectView membroAlterarPost(@Valid  Membro membro) {
        membroRep.save(membro);
        return new RedirectView("/membros.html?alterado=true");
    }

    @GetMapping("membro_deletar.html/{id}")
    public RedirectView membroDeletar(@PathVariable Long id) {
        membroRep.deleteById(id);
        return new RedirectView("/membros.html?excluido=true");
    }
}