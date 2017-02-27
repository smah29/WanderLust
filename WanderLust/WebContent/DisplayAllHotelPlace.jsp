<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.mmt.model.bean.Hotel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Hotels</title>

</head>
<body>
<c:forEach items="${arrayListHotel}" var="hotel">

     <c:out value="${hotel.getHotelId()}" />
      <c:out value="${hotel.getHotelName()}" />
       <c:out value="${hotel.getHotelInfo()}" />
  
</c:forEach>

</body>
</html>