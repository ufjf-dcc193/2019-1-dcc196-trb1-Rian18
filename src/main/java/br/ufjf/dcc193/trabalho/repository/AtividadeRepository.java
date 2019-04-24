package br.ufjf.dcc193.trabalho.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.ufjf.dcc193.trabalho.model.Atividade;


public interface AtividadeRepository extends JpaRepository<Atividade,Long> {

    
}