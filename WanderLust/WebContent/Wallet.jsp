<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="UserDashBoard.jsp"></jsp:include>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wallet</title>
</head>
<body>
<form>



<button type="submit" formaction="AddMoney.jsp">Add Money</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="submit" formaction="./DisplayWallet">Display Wallet</button>
<br>
<br>

<div id="displayBalance">
Wallet Status&nbsp; :&nbsp;${balance}<br>
${msg}
</div>
<c:if test="${not empty messageflight}">
<jsp:forward page="ConfirmFlightBooking.jsp" >
</jsp:forward> 
    
</c:if>

</form>
</body>
</html>