package mum.edu.api;

import java.io.IOException;

import mum.edu.api.entity.PaymentEntity;

public class DevelopmentApi extends PaymentApi{

	public String checkCard(PaymentEntity payment) {
		return "Y";
	}

	public String makePayment(PaymentEntity payment) {
		return "Y";
	}
}
