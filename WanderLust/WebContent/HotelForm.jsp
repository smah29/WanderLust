<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Hotels</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 <script>
$(document).ready(function() {
	var today = new Date();
	var tomorrow=new Date();
	var dd = today.getDate();
	var dd1 = tomorrow.getDate()+1;
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	        
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 

	today = yyyy+'-'+mm+'-'+dd;
	tomorrow=yyyy+'-'+mm+'-'+dd1;
	document.getElementById("from").setAttribute("min", today);
	document.getElementById("to").setAttribute("min", tomorrow);
   $("#to").blur(function(){
	var checkin = new Date($("#from").val());
	var checkout =new Date($("#to").val());

	    if(checkin >= checkout){
	   		alert("Check-Out should be greater than Check-In date");
	   		
	   		$("#to").val(" ");
	    }
	    
	    });
   $("#from").blur(function(){
		var checkin = new Date($("#from").val());
		var checkout =new Date($("#to").val());

		    if(checkin >= checkout){
		   		alert("Check-Out should be greater than Check-In date");
		   		
		   		$("#from").val(" ");
		    }
		    
		    });
	  });
  
  </script>
  <style>
  #submit{
	border-style: solid;
    border-width: 1px;
    border-color: black;
    background-color: black;
    color: white;
    padding:5px;
    font: bold;
    text-align:center; }
    
#form1{
	text-align:left;
	font-family:serif;
	font-weight: 400;

}
  </style>
</head>
<body>
<form id="form1" action="./SearchHotelByPlace" >
<fieldset>


<p>
<b>Place</b>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="places" name="place">
   <option value="New Delhi">New Delhi</option>
    <option value="mumbai">mumbai</option>
    <option value="jaipur">Jaipur</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select></p>

<p><b>Check-In</b>&nbsp; &nbsp;&nbsp; <input type="date" name="from" id="from" placeholder="dd-mm-yyyy" min="" required/></p>
<p><b>Check-Out</b> &nbsp;<input type="date" id="to" name="to" placeholder="dd-mm-yyyy" min="" required/></p> 
<p><b>Room</b>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="room" value="1" min="1"/></p>
<p><input type="submit" id="submit" value="Search"/></p>


</fieldset>
</form>
</body>
</html>