package com.car;

import java.util.Date;

public class Car {
	
	private String make;
	private String model;
	private String vin;
	private Color color;
	private int year;
	private int odometer;
	private Date dealerDate;
	private Date ownerDate;
	private double msrp;
	private double auctionPrice;
	private double auctionMinimum;
	private Owner owner;
	private int daysOnLot;
	
	public Car() {}
	
	
	//getter's
	public String getMake() {
		return this.make;
	}
	public String getModel() {
		return this.model;
	}
	public String getVin() {
		return this.vin;
	}
	public String getColor() {
		return this.color.toString();
	}
	public int getYear() {
		return this.year;
	}
	public int getOdometer() {
		return this.odometer;
	}
	public Date getDealerDate() {
		return this.dealerDate;
	}
	public Date getOwnerDate() {
		return this.ownerDate;
	}
	public double getMsrp() {
		return this.msrp;
	}
	public double getAuctionPrice() {
		return this.auctionPrice;
	}
	public double getAuctionMinimum() {
		return this.auctionMinimum;
	}
	public String getOwnerName() {
		return this.owner.getName();
	}
	public int getDaysOnLot() {
		return this.daysOnLot;
	}
	
	//setter's
	public void setMake(String make) {
		this.make=make;
	}
	public void setModel(String model) {
		this.model=model;
	}
	public void setVin(String vin) {
		this.vin=vin;
	}
	public void setColor(Color color) {
		this.color=color;
	}
	public void setYear(int year) {
		this.year=year;
	}
	public void setOdometer(int odometer) {
		this.odometer=odometer;
	}
	public void setDealerDate(Date date) {
		this.dealerDate=date;
	}
	public void setOwnerDate(Date date) {
		this.ownerDate=date;
	}
	public void setMsrp(double msrp) {
		this.msrp=msrp;
	}
	public void setAuctionPrice(double price) {
		this.auctionPrice=price;
	}
	public void setAuctionMinimum() {
		this.auctionMinimum=this.msrp*0.90;
	}
	public void setDaysOnLot(Date currentDate) {
		this.daysOnLot= currentDate.compareTo(dealerDate);
	}

}
