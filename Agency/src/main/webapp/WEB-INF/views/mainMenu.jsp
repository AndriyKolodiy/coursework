<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <title>Travel Agency</title>
    </head>
    <body>
        <div class="container">
            <h1>Main Menu</h1><br />

            <div class="container2">
                <a href="${contextPath}/findHotel">Find hotels</a>
                <sec:authorize access="hasAuthority('all_permissions')">
                    <a href="${contextPath}/management">Management page</a><br />
                </sec:authorize>
            </div>

            <form action="${contextPath}/mainMenu" method="post">
                <button type="submit">Logout</button>
            </form>
        </div>
    </body>
</html>
