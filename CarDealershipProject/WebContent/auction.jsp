<!-- 

**UNUSED JSP,

KEEPING JUST FOR REFERENCING/PRACTICING




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cody's Car Lot</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link rel="stylesheet" href="./styles/styles.css">


</head>
<body>


<span class="top-banner">Welcome to Cody's Car Lot!</span>


<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Quick Nav
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="homePage.jsp">Home Page</a>
    <a class="dropdown-item" href="inventory.jsp">Inventory</a>
    <a class="dropdown-item" href="auction.jsp">Auction Page</a>
    <a class="dropdown-item" href="businessPage.jsp">Business Reports</a>
  </div>
</div>


<p class="auction-paragraph"> Hooray! You made it to the auction page! This section is still under construction, please check back soon to see the progress
we have made! The goal will be to use a react system to refresh the table containing bidding amounts, without refreshing the whole page! 
	<ul class="auction-to-do-list">
		<li> format and fill page </li>
		<li> Create Table:
			<ol>
				<li>Picture</li>
				<li>Display year, make, model</li>                
				<li>Odometer Reading</li>
				<li>New/used etc</li>
				<li>display current bid price</li>
				<li>display next bid amount</li>
				<li>button to place a bid</li>
			</ol>
		</li>
		<li> Auction servlet, use a counter and multiply bid amounts?</li>
	</ul>
</p>

<c:forEach var="car" items="${inventoryList}">
	<c:if test="${car.daysOnLot > 119}">
		<table>
			<tr>
				<th>Name</th>
				<th>Price</th>
				<th>Bid</th>
			<tr>
				<td><c:out value="${car.year} ${car.make} ${car.model}"
				<td><c:out value="${car.getAuctionPrice}
				<td><a href="auctionServlet?vin=${car.vin}"><button class="bid-btn" onclick="auctionServlet" id="bid-btn" value="bid">Bid Now!</button></a></td>
			</tr>
		</table>	
	</c:if>
</c:forEach>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>

!-->