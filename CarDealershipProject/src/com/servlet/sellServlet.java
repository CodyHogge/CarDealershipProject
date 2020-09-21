package com.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.system.Car;
import com.system.Owner;

/**
 * Servlet implementation class sellServlet
 */
@WebServlet("/sellServlet")
public class sellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String income = (String) session.getAttribute("incomeVal");
		double incomeVal;
		if(income == null) {
			incomeVal = 0.0;
		} else {
			incomeVal = Double.parseDouble(income);
		}
		List<Car> inventoryList = (List<Car>) session.getAttribute("inventoryList");
		if(inventoryList == null) {
			inventoryList = new ArrayList<Car>();
		}
		List<Car> soldList = (List<Car>) session.getAttribute("soldList");
		if(soldList == null) {
			soldList = new ArrayList<Car>();
		}
		
		
		String soldMm = (request.getParameter("soldMm"));
		String soldDd = (request.getParameter("soldDd"));
		String soldYyyy = (request.getParameter("soldYyyy"));
		String soldDate = soldYyyy + " " + soldMm + " " + soldDd;
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy MM dd");
		LocalDate sellDate = LocalDate.parse(soldDate, formatter);
		String buyerName = request.getParameter("buyerName");
		Owner buyer = new Owner(buyerName);
		String method = request.getParameter("sellMethod");
		String sellVin = request.getParameter("sellVin");
		if(method.equalsIgnoreCase("sale")) {
			for(int i=0; i<inventoryList.size();i++) {
				if(sellVin.equalsIgnoreCase(inventoryList.get(i).getVin())){
					double sellVal = inventoryList.get(i).getMsrp();
					incomeVal = incomeVal + sellVal;
					Car sellCar = inventoryList.get(i);
					sellCar.setOwner(buyer);
					sellCar.setOwnerDate(sellDate);
					soldList.add(sellCar);
					inventoryList.remove(i);
				}
			}
		} else if(method.equalsIgnoreCase("auction")) {
			for(int i=0; i<inventoryList.size();i++) {
				if(sellVin.equalsIgnoreCase(inventoryList.get(i).getVin())) {
					double auctionVal = inventoryList.get(i).getAuctionPrice();
					incomeVal = incomeVal + auctionVal;
					Car sellCar = inventoryList.get(i);
					sellCar.setOwner(buyer);
					sellCar.setOwnerDate(sellDate);
					soldList.add(sellCar);
					inventoryList.remove(i);
				}
			}
		}
		
		
		
		
		
		session.setAttribute("incomeVal", incomeVal);
		session.setAttribute("soldList", soldList);
		session.setAttribute("inventoryList", inventoryList);
		RequestDispatcher rs = request.getRequestDispatcher("booted_reports.jsp");
		rs.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
