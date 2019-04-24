package br.ufjf.dcc193.trabalho.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Membro {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long idMembro;
    @ManyToOne(fetch = FetchType.LAZY, optional = false)//verificar
    @JoinColumn(name = "sede_id", nullable = false) //para a sede
    private Sede sede;
    private String nome;
    private String funcao;
    private String email;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataEntrada;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataSaida;

    public Membro() {
    }

    public Long getidMembro() {
        return idMembro;
    }

    public Sede getSede() {
        return sede;
    }

    public String getNome() {
        return nome;
    }

    public String getFuncao() {
        return funcao;
    }

    public String getEmail() {
        return email;
    }

    public LocalDate getDataEntrada() {
        return dataEntrada;
    }

    public LocalDate getDataSaida() {
        return dataSaida;
    }

    public Membro setIdMembro(Long idMembro) {
        this.idMembro = idMembro;
        return this;
    }

    public Membro setSede(Sede sede) {
        this.sede = sede;
        return this;
    }

    public Membro setNome(String nome) {
        this.nome = nome;
        return this;
    }

    public Membro setFuncao(String funcao) {
        this.funcao = funcao;
        return this;
    }

    public Membro setEmail(String email) {
        this.email = email;
        return this;
    }

    public Membro setDataEntradaFuncao(LocalDate dataEntrada) {
        this.dataEntrada = dataEntrada;
        return this;
    }

    public Membro setDataSaida(LocalDate dataSaida) {
        this.dataSaida = dataSaida;
        return this;
    }
}