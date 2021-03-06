<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
    <head>
        <title>Travel Agency</title>
    </head>
    <body>
    <div class="container">
        <div>
            <h2>All users and their orders </h2>
            <table>
                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <th>Username:</th>
                        <th align="center">${user.name} </th>
                    </tr>

                    <tr>
                        <th>Orders:</th>
                        <c:if test="${user.bookings.size() == 0}"><th>No orders</th></c:if>
                    </tr>
                    <c:if test="${user.bookings.size() != 0}">
                        <c:forEach var="book" items="${user.bookings}">
                            <tr>
                                <th>Date of arrival</th>
                                <th>Date of departure</th>
                                <th>Hotel name</th>
                                <th>Room number</th>
                            </tr>
                            <tr>
                                <td align="center">${book.checkIn}</td>
                                <td align="center">${book.checkOut}</td>
                                <td align="center">${book.room.hotel.hotelName}</td>
                                <td align="center">${book.room.id}</td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <p><a href="${contextPath}/management">Back to management page</a></p>
    </div>
    </body>
</html>
