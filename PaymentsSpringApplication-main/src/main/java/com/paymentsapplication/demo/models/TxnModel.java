package com.paymentsapplication.demo.models;

public class TxnModel {


	    private int fromTypeId; // 1 for Wallet, 2 for Bank
	    private String bankType; // Optional: "primary" or "other" if fromTypeId == 2
	    private String toUserId;
	    private String toAccountNumber;
	    private String ifsc;
	    private String bankName;

	    private double amount;

	    // --- Getters and Setters ---
	    
	    public int getFromTypeId() {
	        return fromTypeId;
	    }

	    public void setFromTypeId(int fromTypeId) {
	        this.fromTypeId = fromTypeId;
	    }

	    public String getBankType() {
	        return bankType;
	    }

	    public void setBankType(String bankType) {
	        this.bankType = bankType;
	    }

	    public String getToUserId() {
	        return toUserId;
	    }

	    public void setToUserId(String toUserId) {
	        this.toUserId = toUserId;
	    }

	    public String getToAccountNumber() {
	        return toAccountNumber;
	    }

	    public void setToAccountNumber(String toAccountNumber) {
	        this.toAccountNumber = toAccountNumber;
	    }

	    public String getIfsc() {
	        return ifsc;
	    }

	    public void setIfsc(String ifsc) {
	        this.ifsc = ifsc;
	    }

	    public String getBankName() {
	        return bankName;
	    }

	    public void setBankName(String bankName) {
	        this.bankName = bankName;
	    }

	    public double getAmount() {
	        return amount;
	    }

	    public void setAmount(double amount) {
	        this.amount = amount;
	    }

	  
	    }

	

