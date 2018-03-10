
<%@ page language="java"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<style>

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

.col-25 {
	float: left;
	width: 100%;
	margin-top: 6px;
}

.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Button - Default functionality</title>
<link rel="stylesheet" href="./Scripts/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<script src="./Scripts/jquery-1.12.4.js" type="text/javascript"></script>
<script src="./Scripts/jquery.min.js" type="text/javascript"></script>
<script src="./Scripts/jquery-ui.js" type="text/javascript"></script>

<script>
	function validate() {
		var name = document.formIndex.name.value;
		var contactnumber = document.formIndex.Contnumber.value;
		var address = document.formIndex.Address.value;
		var location = document.formIndex.Location.value;

		if (name == null || name == "") {
			alert("Name cannot be blank");
			return false;
		}
		if (contactnumber == null || contactnumber == "") {
			alert("Contact Number cannot be blank");
			return false;
		}
		if (address == null || address == "") {
			alert("Address cannot be blank");
			return false;
		}
		if (location == null || location == "") {
			alert("Location cannot be blank");
			//autofocus;
			return false;
		}
		var boxes = $('.checkbox1:checkbox');
		if (boxes.length > 0) {
			if ($('.checkbox1:checkbox:checked').length < 1) {
				alert('Please select at least one checkbox');
				boxes[0].focus();
				return false;
			}
		}
		var phoneno = /^\d{10}$/;
		if (document.formIndex.Contnumber.value.match(phoneno)) {
			return true;
		} else {
			alert("Please enter a valid Phone Number with 10 digits");
			return false;
		}

	}
	
function val_update()
{
	var boxes = $('.update_ch:checkbox');
	if (boxes.length > 0) {
		if ($('.update_ch:checkbox:checked').length < 1) {
			alert('Please select at least one checkbox');
			boxes[0].focus();
			return false;
		}
	}
}
	
	function validate1() {
		var available = document.formIndex.available.value;

		if (available == null || name == "") {
			alert("Name cannot be blank");
			//autofocus;
			return false;
		}
	}

	$(function() {
		$(".container").hide();
		$("#donateButton").click(function() {

			$('.rem').hide();
			$(".container").show();
			$(".container1").hide();
			$(".container2").hide();

		});

		$("#logo").click(function() {

			$(".").hide();
			$(".container1").hide();
			$(".container2").hide();

		});

	});

	$(function() {

		$(".container1").hide();
		$("#receiveButton").click(function() {
			$('.rem').hide();
			$(".container").hide();
			$(".container1").show();
			$(".container2").hide();
		});
		// 		$("#submitReceiveButton").click(function() {
		// 			$(".container1").accordion({
		// 				active : 2
		// 			})
		// 		});
	});

	$(function() {

		$(".container2").hide();
		$("#listedButton").click(function() {
			$('.rem').hide();
			$(".container").hide();
			$(".container2").show();
			$(".container1").hide();
		});
		// 		$("#listedButton").click(function() {
		// 			$(".container2").accordion({
		// 				active : 2
		// 			})
		// 		});
	});

	function myFunction() {
		alert("Thanks for the entry ! We will get back to you shortly..");

	}
	function myFunction1() {
		alert("Thanks for the request ! We will get back to you shortly..");
	}

	$(function() {
		$("input").checkboxradio();
	});
</script>
</head>
<body>


	<div class="widget" style="text-align: center">

		<input type="submit" value="Donate ?" id="donateButton"> 
		<input type="submit" value="Receive ?" id="receiveButton"> 
		<input type="submit" value="Check Your Listed Items" id="listedButton">
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    <a href="LogoutServlet">
		<input type="submit" value="Logout">
		</a>
		
		
			

		<!-- 		</p> -->
		<p></p>
		<div class="center">
			<img class="rem" id="image" src="image.jpg" height=350 width=690
				style="border-collapse: collapse;">

		</div>

	</div>

	<div class="container">
		<form name="formIndex" action="DonateController" method="post"
			onsubmit="return validate()">
			<h3>Details for donation</h3>

			<div class="row">
				<div class="col-25">
					<label for="Name">Name:</label>
				</div>
				<div class="col-75">
					<input type="text" id="name" name="name" placeholder="Your name..">
				</div>
				<div class="col-25">
					<label for="ContactNumber">Contact number:</label>
				</div>
				<div class="col-75">
					<input type="text" id="Contnumber" name="Contnumber" maxlength="10"
						placeholder="Your number..">
				</div>

				<div class="col-25">
					<label for="Address">Address:</label>
				</div>
				<div class="col-75">
					<input type="text" id="Address" name="Address"
						placeholder="Your Address..">
				</div>

				<div class="col-25">
					<label for="Location">Location:</label>
				</div>
				<div class="col-75">
					<input type="text" id="Location" name="Location"
						placeholder="Your City or Nearby Location..">
				</div>

			</div>

			<h3>Please choose items for donation</h3>

			<div class="row">
				<div class="col-25">
					<input class="checkbox1" type="checkbox" name="cb1" value="food">
					Food
				</div>
				<div class="col-25">
					<input class="checkbox1" type="checkbox" name="cb1" value="clothes">
					Clothing
				</div>
				<div class="col-25">
					<input class="checkbox1" type="checkbox" name="cb1"
						value="householditems"> House hold items
				</div>
				<div class="col-25">
					<label for="others">Others..</label>
				</div>
				<div class="col-75">
					<input type="text" id="others" name="others"
						placeholder="Please specify your product details..">
				</div>

			</div>

			<div class="widget">
				<p></p>
				<input id="submitDonateButton" type="submit" value="Submit">

			</div>

		</form>
	</div>



	<!-- receiver details -->


	<div class="container1">
		<table border="1" width="800" style="text-align: center" align="center" bgcolor="#f2f2f2">
			<tr>
				<td width="119"><b>Name</b></td>
				<td width="300"><b>Mobile Number</b></td>
				<td width="200"><b>Location</b></td>
				<td width="500"><b>Address</b></td>
				<td width="250"><b>Food</b></td>
				<td width="250"><b>Clothes</b></td>
				<td width="250"><b>Household Items</b></td>
				<td width="300"><b>Other</b></td>
			</tr>
			<%
				Iterator itr;
			%>
			<%
				List data = (List) request.getAttribute("data");
				for (itr = data.iterator(); itr.hasNext();) {
			%>
			<tr>
				<td width="119"><%=itr.next()%></td>
				<td width="300"><%=itr.next()%></td>
				<td width="150"><%=itr.next()%></td>
				<td width="500"><%=itr.next()%></td>
				<td width="250"><%=itr.next()%></td>
				<td width="250"><%=itr.next()%></td>
				<td width="250"><%=itr.next()%></td>
				<td width="500" height="100"><%=itr.next()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>

		<!-- listed items details -->

	<form name="listUpdate" action="listUpdateController" method="post" onsubmit="return val_update()"	>
	<div class="container2">
		<table border="1" width="1000" style="text-align: center" align="center" bgcolor="#f2f2f2">
			<tr>
				<td width="119"><b>Name</b></td>
				<td width="300"><b>Mobile Number</b></td>
				<td width="200"><b>Location</b></td>
				<td width="500"><b>Address</b></td>
				<td width="250"><b>Food</b></td>
				<td width="250"><b>Clothes</b></td>
				<td width="250"><b>Household Items</b></td>
				<td width="300"><b>Other</b></td>
				<td width="300"><b>Still Available</b></td>
				<td width="500" height="100"><b>Change Status (Tick the check box if item is now not available)</b></td>
			</tr>
			<%
				Iterator itr1;
			%>
			<%
				List data1 = (List) request.getAttribute("data1");
				for (itr1 = data1.iterator(); itr1.hasNext();) {
			%>
			<tr>
				<td width="119"><%=itr1.next()%></td>
				<td width="300"><%=itr1.next()%></td>
				<td width="150"><%=itr1.next()%></td>
				<td width="500"><%=itr1.next()%></td>
				<td width="250"><%=itr1.next()%></td>
				<td width="250"><%=itr1.next()%></td>
				<td width="250"><%=itr1.next()%></td>
				<td width="300"><%=itr1.next()%></td>
				<td width="300"><%=itr1.next()%></td>
				
				<td width="300"><input class ="update_ch" type="checkbox" value="<%=itr1.next()%>" name="update"/></td>
				
			</tr>
			<%
				}
			%>
		</table>
	
	
	<div class="widget" style="text-align: center" align="center">
				<p></p>
				<input id="submitUpdateButton" type="submit" value="Submit">

			</div>
	</div>
	</form>
</body>
</html>