package br.ufjf.dcc193.trabalho;

import br.ufjf.dcc193.trabalho.model.Sede;

public class Totalizador {
    private Sede sede;
    private Integer totalAssistencial;
    private Integer totalJuridica;
    private Integer totalFinanceira;
    private Integer totalExecutiva;

    public Totalizador() {
    }

    public Totalizador(Sede sede, Integer totalAssistencial, Integer totalJuridica, Integer totalFinanceira, Integer totalExecutiva) {
        this.sede = sede;
        this.totalAssistencial = totalAssistencial;
        this.totalJuridica = totalJuridica;
        this.totalFinanceira = totalFinanceira;
        this.totalExecutiva = totalExecutiva;
    }

   

    public Sede getSede() {
        return sede;
    }

    public Totalizador setSede(Sede sede) {
        this.sede = sede;
        return this;
    }

    public Integer getTotalAssistencial() {
        return totalAssistencial;
    }

    public Totalizador setTotalAssistencial(Integer totalAssistencial) {
        this.totalAssistencial = totalAssistencial;
        return this;
    }

    public Integer getTotalJuridica() {
        return totalJuridica;
    }

    public Totalizador setTotalJuridica(Integer totalHorasJuridica) {
        this.totalJuridica = totalHorasJuridica;
        return this;
    }

    public Integer getTotalFinanceira() {
        return totalFinanceira;
    }

    public Totalizador setTotalFinanceira(Integer totalFinanceira) {
        this.totalFinanceira = totalFinanceira;
        return this;
    }

    public Integer getTotalExecutiva() {
        return totalExecutiva;
    }

    public Totalizador setTotalHorasExecutiva(Integer totalExecutiva) {
        this.totalExecutiva = totalExecutiva;
        return this;
    }
}

