package program;

import java.util.Scanner;
import java.io.IOException;

import model.Endereco;
import service.ViaCepService;


public class Teste1 {


    public static void main(String[] args){
    Scanner ler = new Scanner(System.in);
		 


        ViaCepService viacepservice = new ViaCepService();
        String value;

		System.out.printf("Digite o seu CEP: ");
		value = ler.next();

        try {
            Endereco endereco = viacepservice.getEndereco(value);
           
            String ddd = endereco.getDdd();
            String uf = endereco.getUf();
           
            System.out.println(endereco + "\n");
            
           
        } catch (IOException e) {
            
            e.printStackTrace();
        }  
    }
}