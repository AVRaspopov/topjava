<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="javatime" uri="http://sargue.net/jsptags/time" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<table style="margin-top: 10px">
    <thead>
    <tr>
        <th>Дата/Время</th>
        <th>Описание</th>
        <th>Калории</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody id="mainTable">
    <jsp:useBean id="MealTo" scope="request" type="java.util.List"/>
    <c:forEach var="meal" items="${MealTo}">
        <tr style="background-color:${meal.excess ? 'greenyellow' : 'red'}">
        <td>${meal.dateTime.format(DateTimeFormatter.ofPattern("dd.MM.yyyy hh-mm"))}</td>
        <td>${meal.description}</td>
        <td>${meal.calories}</td>
        <td></td>
        <td></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
