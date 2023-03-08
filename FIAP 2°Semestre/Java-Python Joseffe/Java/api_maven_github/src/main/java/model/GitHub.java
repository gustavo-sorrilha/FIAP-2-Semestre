package model;

public class GitHub {


    private String nome;
    private String qtdrepositorios;
    private String followers;

   
    public String getNome() {
    return nome;
    }
   
    public void setNome(String nome) {
        this.nome = nome;
    }
   
    public String getQtdrepositorios() {
        return qtdrepositorios;
    }
    public void setFollowers(String followers) {
        this.followers = followers;
    }
   
    public void setQtdrepositorios(String qtdrepositorios) {
        this.qtdrepositorios = qtdrepositorios;
    }
    public String getFollowers() {
        return  followers;
    }
   
  
   
    @Override
    public String toString() {
 
        return "Nome = " + nome + "\n"+"Qtd.repositorios="+ qtdrepositorios + "\n" + "Qtd.seguidores=" + followers +"";
    }
}