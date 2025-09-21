<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
List<String> orders = (List<String>)session.getAttribute("allorders");
if(orders ==null){
    orders = new ArrayList<>();
    session.setAttribute("allorders",orders);
}
String order = request.getParameter("order");
orders.add(order);
for(String o :orders) {
%>
    <h1>  <%=o %>  </h1>
<% }
 %>
</body>
</html>
