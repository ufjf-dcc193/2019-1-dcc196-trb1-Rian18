package br.ufjf.dcc193.trabalho.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.ufjf.dcc193.trabalho.model.Atividade;

@Repository
public interface AtividadeRepository extends JpaRepository<Atividade,Long> {

    
    @Query(value = "select sum(a.horasAssitencial) from Atividade a where a.sede.id = ?1")
    Integer somaTAssistencial(long idSede);

    @Query(value = "select sum(a.horasJuridica) from Atividade a where a.sede.id = ?1")
    Integer somaTJuridica(long idSede);

    @Query(value = "select sum(a.horasFinanceira) from Atividade a where a.sede.id = ?1")
    Integer somaTFinanceira(long idSede);

    @Query(value = "select sum(a.horasExecutiva) from Atividade a where a.sede.id = ?1")
    Integer somaTExecutiva(long idSede);
}
    