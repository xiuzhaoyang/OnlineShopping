package mum.edu.api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.Gson;

import mum.edu.api.entity.PaymentEntity;

public class PaymentApi {
	protected String checkURL;
	protected String paymentURL;
	
	protected PaymentApi(){
	}
	
	protected String callApi(String postData, URL url) throws IOException {
        
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setDoOutput(true);
        connection.setRequestMethod("POST");
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setRequestProperty("Content-Length",  String.valueOf(postData.length()));
        
        // Write data
        OutputStream os = connection.getOutputStream();
        os.write(postData.getBytes());
         
        // Read response
        StringBuilder responseSB = new StringBuilder();
        BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
          
        String line;
        while ( (line = br.readLine()) != null)
            responseSB.append(line);
                 
        // Close streams
        br.close();
        os.close();
         
        return responseSB.toString();
         
    }
	
	public String checkCard(PaymentEntity payment, String link) throws IOException{
		URL url = new URL(link);
		Gson gson = new Gson();
		String postData = gson.toJson(payment);
         
		return callApi(postData, url);
	}

	public String makePayment(PaymentEntity payment, String link) throws IOException{
		URL url = new URL(link);
		Gson gson = new Gson();
		String postData = gson.toJson(payment);
         
		return callApi(postData, url);
	}
}
