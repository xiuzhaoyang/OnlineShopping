package mum.edu.api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import com.google.gson.Gson;

import mum.edu.api.entity.PaymentEntity;

public class MasterCardApi extends PaymentApi {

	public MasterCardApi(){
		checkURL = "http://localhost:3030/api/PostTesting";
		paymentURL = "http://localhost:3030/api/PostTesting";
	}

	public String checkCard(PaymentEntity payment){
		String res = "N";
		try{
			res = super.checkCard(payment, checkURL);
		}
		catch(IOException exc){
			System.out.println(exc.getMessage());
		}
		return res;
	}
	
	public String makePayment(PaymentEntity payment){
		String res = "N";
		try{
			res = super.checkCard(payment, paymentURL);
		}
		catch(IOException exc){
			System.out.println(exc.getMessage());
		}
		return res;
	}
}
