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
    private Integer totalHorasAssistencial;
    private Integer totalHorasJuridica;
    private Integer totalHorasFinanceira;
    private Integer totalHorasExecutiva;

    public Atividade() {

    }

    public Atividade(String titulo, String descricao, LocalDate dataInicio, LocalDate dataFim, Integer totalHorasAssistencial, Integer totalHorasJuridica, Integer totalHorasFinanceira, Integer totalHorasExecutiva) {
        this.titulo = titulo;
        this.descricao = descricao;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.totalHorasAssistencial = totalHorasAssistencial;
        this.totalHorasJuridica = totalHorasJuridica;
        this.totalHorasFinanceira = totalHorasFinanceira;
        this.totalHorasExecutiva = totalHorasExecutiva;
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

    public Integer getTotalHorasAssistencial() {
        return totalHorasAssistencial;
    }

    public void setTotalHorasAssistencial(Integer totalHorasAssistencial) {
        this.totalHorasAssistencial = totalHorasAssistencial;
    }

    public Integer getTotalHorasJuridica() {
        return totalHorasJuridica;
    }

    public void setTotalHorasJuridica(Integer totalHorasJuridica) {
        this.totalHorasJuridica = totalHorasJuridica;
    }

    public Integer getTotalHorasFinanceira() {
        return totalHorasFinanceira;
    }

    public void setTotalHorasFinanceira(Integer totalHorasFinanceira) {
        this.totalHorasFinanceira = totalHorasFinanceira;
    }

    public Integer getTotalHorasExecutiva() {
        return totalHorasExecutiva;
    }

    public void setTotalHorasExecutiva(Integer totalHorasExecutiva) {
        this.totalHorasExecutiva = totalHorasExecutiva;
    }

    public Sede getSede() {
        return sede;
    }

    public Atividade setSede(Sede sede) {
        this.sede = sede;
        return this;
    }
}