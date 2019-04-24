package br.ufjf.dcc193.trabalho.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.ufjf.dcc193.trabalho.model.Membro;

public interface MembroRepository extends JpaRepository<Membro,Long> {

    
}