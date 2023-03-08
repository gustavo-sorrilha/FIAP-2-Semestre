package program;


import java.io.IOException;
import java.util.Scanner;

import model.GitHub;
import service.ViaGitService;


public class Teste
{
	Scanner ler = new Scanner(System.in);


    public static void main(String[] args) {


        ViaGitService viagitservice = new ViaGitService();
        String value;
        
        System.out.printf("Digite o Login do Git: ");
		value = ler.next();


        try {
            GitHub github = viagitservice.getGitHub(value);
           
            String ddd = github.getDdd();
            String uf = github.getUf();
           
            System.out.println(github + "\n");
            
           
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }  
    }
}
