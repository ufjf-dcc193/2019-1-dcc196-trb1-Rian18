package br.ufjf.dcc193.trabalho.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "sede_id", nullable = false)
    private Sede sede;
    private String titulo;
    private String descricao;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataInicio;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataFim;
    private Integer horasAssitencial;
    private Integer horasJuridica;
    private Integer horasFinanceira;
    private Integer horasExecutiva;

    public Atividade() {

    }

    public Atividade(String titulo, String descricao, LocalDate dataInicio, LocalDate dataFim, Integer totalHorasAssistencial, Integer totalHorasJuridica, Integer totalHorasFinanceira, Integer totalHorasExecutiva) {
        this.titulo = titulo;
        this.descricao = descricao;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.horasAssitencial = totalHorasAssistencial;
        this.horasJuridica = totalHorasJuridica;
        this.horasFinanceira = totalHorasFinanceira;
        this.horasExecutiva = totalHorasExecutiva;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public LocalDate getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(LocalDate dataInicio) {
        this.dataInicio = dataInicio;
    }

    public LocalDate getDataFim() {
        return dataFim;
    }

    public void setDataFim(LocalDate dataFim) {
        this.dataFim = dataFim;
    }

    public Integer getHorasAssistencial() {
        return horasAssitencial;
    }

    public void setHorasAssistencial(Integer totalHorasAssistencial) {
        this.horasAssitencial = totalHorasAssistencial;
    }

    public Integer getHorasJuridica() {
        return horasJuridica;
    }

    public void setHorasJuridica(Integer totalHorasJuridica) {
        this.horasJuridica = totalHorasJuridica;
    }

    public Integer getHorasFinanceira() {
        return horasFinanceira;
    }

    public void setHorasFinanceira(Integer totalHorasFinanceira) {
        this.horasFinanceira = totalHorasFinanceira;
    }

    public Integer getHorasExecutiva() {
        return horasExecutiva;
    }

    public void setHorasExecutiva(Integer totalHorasExecutiva) {
        this.horasExecutiva = totalHorasExecutiva;
    }

    public Sede getSede() {
        return sede;
    }

    public Atividade setSede(Sede sede) {
        this.sede = sede;
        return this;
    }
}