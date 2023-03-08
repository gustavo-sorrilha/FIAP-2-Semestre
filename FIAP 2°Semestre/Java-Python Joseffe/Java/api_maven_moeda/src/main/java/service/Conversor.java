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


import model.Moeda;


public class Conversor {
   
    public Moeda getMoeda(String moeda) throws ClientProtocolException, IOException {
       
        Moeda coins = null;
        
        int option;
		if (option == 1);
        if (option == 2);
        if (option == 3);
        
        
        HttpGet request = new HttpGet("https://docs.awesomeapi.com.br/"+ option);
       
        try(CloseableHttpClient httpClient = HttpClientBuilder.create().disableRedirectHandling().build();
               
                CloseableHttpResponse response = httpClient.execute(request)) {
           
            HttpEntity entity = response.getEntity();
           
            if(entity != null) {
               
                String result = EntityUtils.toString(entity);
               
                Gson gson = new Gson();
               
                coins = gson.fromJson(result, Moeda.class);
            }
        }
       
        return coins;
    }
}
