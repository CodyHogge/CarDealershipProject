<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cody's Car Lot</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="./styles/styles.css"/>
</head>
<body>

<span class="top-banner">Welcome to the Inventory Page!</span>


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

<h3>Available Inventory</h3>
<h4>Total Cars Available:<c:out value="${inventoryList.size()}"/></h4>
<table class="avail-cars">
	<tr>
		<th>Picture</th>
		<th>Name</th>
		<th>MSRP</th>
		<th>Miles</th>
	</tr>
	<c:forEach var="car" items="${inventoryList}">
		<c:if test="${car.getOwnerDate() == null}">
			<tr>
				<td>Picture</td>
				<td><c:out value="${car.getYear()}  ${car.getMake()}  ${car.getModel()}"/></td>
				<td><c:out value="${car.getMsrp()}"/></td>
				<td><c:out value="${car.getOdometer()}"/></td>
			</tr>
			<tr>
				<td class="car-description">
					<p><c:out value="VIN:${car.getVin()} Color:${car.getColor()}  Condition:${car.getCondition()}
					 Days on the Lot:${car.getDaysOnLot()}  Auction Min:${car.getAuctionMin()}"/></p>
				</td>
			</tr>
		</c:if>
	</c:forEach>

</table>

<h3>Sold Inventory</h3>
<h4>Total Cars Sold: <c:out value="${soldList.size()}"/></h4>
	<table class="sold-cars">
		<tr>
			<th>Picture</th>
			<th>Name</th>
			<th>MSRP</th>
			<th>Miles</th>
		</tr>
		<c:forEach var="car" items="${soldList}">
			<tr>
				<td>Picture</td>
				<td><c:out value="${car.getYear()}  ${car.getMake()}  ${car.getModel()}"/></td>
				<td><c:out value="${car.getMsrp()}"/></td>
				<td><c:out value="${car.getOdometer()}"/></td>
			</tr>
			<tr>
				<td class="car-description">
					<p><c:out value="VIN:${car.getVin()} Color:${car.getColor()}  Condition:${car.getCondition()}
					 Days on the Lot:${car.getDaysOnLot()}  Auction Min:${car.getAuctionMin()}"/></p>
				</td>
			</tr>			
		</c:forEach>
	</table>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>