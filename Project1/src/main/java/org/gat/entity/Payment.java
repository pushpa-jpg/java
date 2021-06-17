package org.gat.entity;

public class Payment {
	
	private int id;
	private String name;
	private String batch;
	private String year;
	private String branch;
	private String category;
	private String total_fee;
	private String cardholder;
	private String cardnumber;
	private String expiry_date;
	private String cvc;
	private String amount;
	
	public Payment(int id, String name, String batch,String year,String branch,String category, String total_fee, String cardholder, String cardnumber,
			String expiry_date, String cvc, String amount) {
		super();
		this.id = id;
		this.name = name;
		this.batch = batch;
		this.year = year;
		this.branch= branch;
		this.category = category;
		this.total_fee = total_fee;
		this.cardholder = cardholder;
		this.cardnumber = cardnumber;
		this.expiry_date = expiry_date;
		this.cvc = cvc;
		this.amount = amount;
	}
	
	
	public Payment(String name, String batch,String year,String branch,String category, String total_fee, String cardholder, String cardnumber,
			String expiry_date, String cvc, String amount) {
		super();
		this.name = name;
		this.batch = batch;
		this.year = year;
		this.branch= branch;
		this.category = category;
		this.total_fee = total_fee;
		this.cardholder = cardholder;
		this.cardnumber = cardnumber;
		this.expiry_date = expiry_date;
		this.cvc = cvc;
		this.amount = amount;
	}


	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}
	
	
	public String getYear() {
		return year;
	}


	public void setYear(String year) {
		this.year = year;
	}


	public String getBranch() {
		return branch;
	}


	public void setBranch(String branch) {
		this.branch = branch;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	
	
	public String getTotal_fee() {
		return total_fee;
	}
	public void setTotal_fee(String total_fee) {
		this.total_fee = total_fee;
	}
	
	
	public String getCardholder() {
		return cardholder;
	}
	
	public void setCardholder(String cardholder) {
		this.cardholder = cardholder;
	}
	
	
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	
	
	public String getExpiry_date() {
		return expiry_date;
	}
	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}
	
	
	public String getCvc() {
		return cvc;
	}
	public void setCvc(String cvc) {
		this.cvc = cvc;
	}
	
	
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	

}
