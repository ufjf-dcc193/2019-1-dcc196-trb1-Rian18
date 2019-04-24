package br.ufjf.dcc193.trabalho.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sede {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    private String nomefantasia;
    private String endereco, bairro, cidade;
    private String telefone;
    private String endweb;

    public Sede()
    {

    }
    public Sede(String nomeFantasia,String endereco,String bairro, String cidade, String telefone, String endweb)
    {
        this.nomefantasia = nomeFantasia;
        this.endereco = endereco;
        this.bairro = bairro;
        this.cidade = cidade;
        this.telefone = telefone;
        this.endweb = endweb;
    }

   
    public Long getId() {
        return id;
    }
    public String getNomefantasia() {
        return nomefantasia;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getBairro() {
        return bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEndweb() {
        return endweb;
    }

    
    public void setId(Long id) {
        this.id = id;
    }
    
    public void setNomefantasia(String nomefantasia) {
        this.nomefantasia = nomefantasia;
    }
    
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
    
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public void setEndweb(String endweb) {
        this.endweb = endweb;
    }

}