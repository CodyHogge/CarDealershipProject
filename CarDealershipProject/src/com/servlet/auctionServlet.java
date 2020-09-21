package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.system.Car;

/**
 * Servlet implementation class auctionServlet
 */
@WebServlet("/auctionServlet")
public class auctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public auctionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		List<Car> inventoryList = (List<Car>) session.getAttribute("inventoryList");
		String auctionVin = request.getParameter("vin");
		for(int i=0;i<inventoryList.size();i++) {
			if(inventoryList.get(i).getVin().equals(auctionVin)) {
				int bids = inventoryList.get(i).getBids();
				if(inventoryList.get(i).getBids() == 0) {
					double auctionPrice = inventoryList.get(i).getAuctionMin();
					inventoryList.get(i).setAuctionPrice(auctionPrice);
				} else {
					double auctionPrice = inventoryList.get(i).getAuctionPrice();
					inventoryList.get(i).setAuctionPrice(auctionPrice);
				}
					double bidVal = bids * 500.00;
					inventoryList.get(i).setAuctionPrice(inventoryList.get(i).getAuctionPrice() + bidVal);
				
				bids++;
				inventoryList.get(i).setBids(bids);
				
			}
		}
		
		session.setAttribute("inventoryList", inventoryList);
		RequestDispatcher rs = request.getRequestDispatcher("booted_auction.jsp");
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
