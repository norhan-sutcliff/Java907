<html>
<body>
<%! Integer id = 1;
    String name ="Nour";%>
<%! String concat(Integer id, String name)
    { return id+name;
    }%>

<%= concat(id,name)%>
</body>
</html>
