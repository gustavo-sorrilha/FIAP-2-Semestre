package service;

import java.io.IOException;


import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;


import com.google.gson.Gson;


import model.GitHub;


public class ViaGitService {
   
    public GitHub getGit(String cep) throws ClientProtocolException, IOException {
       
        GitHub git = null;
       
        HttpGet request = new HttpGet("https://api.github.com/users/"+git+"");
       
        try(CloseableHttpClient httpClient = HttpClientBuilder.create().disableRedirectHandling().build();
               
                CloseableHttpResponse response = httpClient.execute(request)) {
           
            HttpEntity entity = response.getEntity();
           
            if(entity != null) {
               
                String result = EntityUtils.toString(entity);
               
                Gson gson = new Gson();
               
                git = gson.fromJson(result, GitHub.class);
            }
        }
       
        return git;
    }
}