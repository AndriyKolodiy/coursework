<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <title>Travel Agency</title>
    </head>
    <body>
        <div class="container">
            <h1>Management Menu</h1>
            <div class="container2">
                <p><a href="${contextPath}/hotelList">Hotel editing functions</a></p>
                <p><a href="${contextPath}/allBookings">All users and and their bookings</a></p>
            </div>
        </div>
    </body>
</html>