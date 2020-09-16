package com.system;

public class Finance {
	
	private double income;
	
	public Finance() {
		
	}

	public double getIncome() {
		return income;
	}

	public void setIncome(double income) {
		this.income = income;
	}
	
	public void addAuctionVal(double auctionSell) {
		this.income = this.income + auctionSell;
	}
	
	public void addSellVal(double sellVal) {
		this.income = this.income + sellVal;
	}

}
