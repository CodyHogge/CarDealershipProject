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
	<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">Cody's Car Lot</a>
  			<button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
  			</button>
  		<input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  		<ul class="navbar-nav px-3">
    		<li class="nav-item text-nowrap">
      			<a class="nav-link" href="#">Sign out</a>
    		</li>
  		</ul>
	</nav>

	<div class="jumbotron">
    	<div class="container">
      		<h1 class="display-3">Welcome to the Business Functions Page</h1>
      		<p>Use this page to create/sell/remove/update inventory.</p>
    	</div>
  	</div>



	<div class="container-fluid">
  		<div class="row">
    		<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse show" style="">
      			<div class="sidebar-sticky pt-3">
        			<ul class="nav flex-column">
          				<li class="nav-item">
            				<a class="nav-link active" href="booted_home.jsp">
              					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
              					Home Page
            				</a>
          				</li>
          				<li class="nav-item">
            				<a class="nav-link" href="booted_inventory.jsp">
              					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
              					Inventory
            				</a>
          				</li>
          				<li class="nav-item">
            				<a class="nav-link" href="booted_auction.jsp">
              					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
              					Auction Page 
            				</a>
          				</li>
          				<li class="nav-item">
            				<a class="nav-link" href="booted_functions.jsp">
              					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
              					Business Page - Functions <span class="sr-only">(current)</span>
            				</a>
          				</li>
          				<li class="nav-item">
            				<a class="nav-link" href="booted_reports.jsp">
              					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
             	 				Business Page - Reports
            				</a>
          				</li>
        			</ul>
      			</div>
    		</nav>
  		</div>
	</div>

	<form action="inventoryUpdateServlet" method="post">
  		<div class="form-row">
  			<div class="form-group col-md-2">
      			<select name="action" id="action" class="form-control">
      				<option>Select Action...</option>
      				<option value="add">Add</option>
      				<option value="remove">Remove</option>
      				<option value="sell">Sell</option>
      			</select>
    		</div>
    		<div class="form-group col-md-2">
      			<select name="make" id="make" class="form-control">
      				<option>Select Make...</option>
      				<option value="mazda">Mazda</option>
      				<option value="ford">Ford</option>
      				<option value="toyota">Toyota</option>
      			</select>
    		</div>
    		<div class="form-group col-md-2">
      			<select name="model" id="model" class="form-control">
      				<option>Select Model...</option>
      				<option value="mazda3">Mazda3</option>
      				<option value="cx5">CX5</option>
      				<option value="corolla">Corolla</option>
      				<option value="mustang">Mustang</option>
      			</select>
    		</div>
  		</div>
  		<div class="form-group">
			<label for="vin">VIN: </label>
			<input type="text" class="form-control col-md-2" name="vin" id="vin" placeholder="ex. 1234M">
		</div>
		<div class="form-group">
			<label for="ownerName">Owner Name: </label>
			<input type="text" class="form-control col-md-2" name="ownerName" id="ownerName" placeholder="Name">
		</div>
		<div class="form-group">
			<label for="msrp">MSRP: </label>
			$<input type="text" class="form-control col-md-2" name="msrp" id="msrp" placeholder="19000">
		</div>
		<div class="form-group">
			<label for="year">Year: </label>
			<input type="text" class="form-control col-md-2" name="year" id="year" placeholder="year">
		</div>
		<div class="form-group">
			<label for="odometer">Odometer: </label>
			<input type="text" class="form-control col-md-2" name="odometer" id="odometer" placeholder="ex. 10000">
		</div>
			<div class="form-group">
				<h4>Dealer purchase date:</h4>
					<label for="dealer-mm">Month</label>
					<input type="text" class="form-control col-md-2" name="dealer-mm" id="dealer-mm">
					<label for="dealer-dd">Day</label>
					<input type="text" class="form-control col-md-2" name="dealer-dd" id="dealer-dd">
					<label for="dealer-yyyy">Year</label>
					<input type="text" class="form-control col-md-2" name="dealer-yyyy" id="dealer-yyyy">
			</div>
    	<div class="form-group col-md-2">
      		<label for="color">Color</label>
      		<select name="color" id="color" class="form-control">
        			<option selected>Choose...</option>
        			<option value="BLACK">Black</option>
        			<option value="BLUE">Blue</option>
        			<option value="GREEN">Green</option>
        			<option value="RED">Red</option>
        			<option value="WHITE">White</option>
      			</select>
    	</div>  		
  		<div class="form-group col-md-2">
			<select class="form-control" name="condition" id="condition">
				<option value="new">New</option>
				<option value="used">Used</option>
			</select>
		</div>
		<div class="form-group">
			<label for="ownerName">Owner Name: </label>
			<input type="text" class="form-control col-md-2" name="buyerName" id="buyerName" placeholder="Name">
		</div>
		
		<h3>***This section is only for the action "Sell"***</h3>
		<div class="form-group">
				<h4>Owner purchase date:</h4>
					<label for="soldMm">Month</label>
					<input type="text" class="form-control col-md-2" name="soldMm" id="soldMm">
					<label for="soldDd">Day</label>
					<input type="text" class="form-control col-md-2" name="soldDd" id="soldDd">
					<label for="soldYyyy">Year</label>
					<input type="text" class="form-control col-md-2" name="soldYyyy" id="soldYyyy">
			</div>
		
		
		
  		<button type="submit" class="btn btn-primary">Submit</button>
	</form>

</body>
</html>