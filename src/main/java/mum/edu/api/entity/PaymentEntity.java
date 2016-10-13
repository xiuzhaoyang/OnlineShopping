package mum.edu.api.entity;

public class PaymentEntity {
	private long CardNo;
	private String HolderName;
	private int CVV;
	private int ExperiedMonth;
	private int ExperiedYear;
	private double Amount;
	
	
	public long getCardNo() {
		return CardNo;
	}
	public void setCardNo(long cardNo) {
		CardNo = cardNo;
	}
	public String getHolderName() {
		return HolderName;
	}
	public void setHolderName(String holderName) {
		HolderName = holderName;
	}
	public int getCVV() {
		return CVV;
	}
	public void setCVV(int cVV) {
		CVV = cVV;
	}
	public int getExperiedMonth() {
		return ExperiedMonth;
	}
	public void setExperiedMonth(int experiedMonth) {
		ExperiedMonth = experiedMonth;
	}
	public int getExperiedYear() {
		return ExperiedYear;
	}
	public void setExperiedYear(int experiedYear) {
		ExperiedYear = experiedYear;
	}
	public double getAmount() {
		return Amount;
	}
	public void setAmount(double amount) {
		Amount = amount;
	}
	
	
}
