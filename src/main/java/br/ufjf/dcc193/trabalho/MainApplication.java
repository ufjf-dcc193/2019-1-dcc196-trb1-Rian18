package br.ufjf.dcc193.trabalho;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import br.ufjf.dcc193.trabalho.model.Sede;
import br.ufjf.dcc193.trabalho.repository.SedeRepository;

@SpringBootApplication

public class MainApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(MainApplication.class, args);
		//System.out.println("Primeiro Trabalho de DCC193 - 2019.1");

		SedeRepository Sederep = ctx.getBean(SedeRepository.class);
        Sede sede1 = new Sede("Rio de Janeiro","Copacabana", "SP", "São Paulo", "Guarulhos", "(11) 1234-5678", "www.google.com");
        Sede sede2 = new Sede("Sede Juiz de Fora","São PEdro", "MG", "Juiz de Fora", "Cascatinha", "(32) 1234-5678", "www.google.com");
        Sederep.save(sede1);
        Sederep.save(sede2);
	}

}
