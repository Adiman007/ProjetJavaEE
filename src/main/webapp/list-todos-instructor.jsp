<%--
  Created by IntelliJ IDEA.
  User: celin
  Date: 25/11/2022
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Web ToDos Tracker</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
<!-- ${ToDos_LIST}-->
<div id="wrapper">
    <div id="header">
        <h2>ESILV Engineer School</h2>
    </div>
</div>
<div id="container">
    <div id="content">
        <c:if test="${!empty sessionScope.prenom && !empty sessionScope.nom}">
            <p> Welcome ${sessionScope.prenom} ${sessionScope.nom} </p>
        </c:if>
        <table>
            <tr>
                <th> Id </th>
                <th> Description </th>
            </tr>
            <c:forEach var="tempToDos" items="${ToDos_LIST }" >
            <c:url var="EditLink" value= "EditToDosServlet">
                <c:param name="toDosId" value="${tempToDos.id}"/>
            </c:url>
            <tr>
                <td> ${tempToDos.description}</td>
                <td> <a href="${EditLink }"> Edit</a></td>
                </c:forEach>
        </table>
    </div>

    <form name = "BtnForm" action = "add-todos.jsp" method="post">
        <button>Add ToDos</button>
    </form>
    <form action="Logout" method="get">
        <input type="submit" value="logout"/>
    </form>
</div>
</body>
</html>