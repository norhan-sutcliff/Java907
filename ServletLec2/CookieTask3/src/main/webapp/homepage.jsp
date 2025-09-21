<%
    String favPlace = request.getParameter("favPlace");
    if (favPlace != null && !favPlace.isEmpty()) {
        Cookie cookie = new Cookie("FavPlace", favPlace);
        cookie.setMaxAge(30 * 24 * 60 * 60);
        response.addCookie(cookie);
    } else {
        Cookie cookies[] = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("FavPlace".equals(c.getName())) {
                    favPlace = c.getValue();
                    break;
                }
            }
        }
    }
%>
<h1>Favorite place is: <%= favPlace != null ? favPlace : "none" %></h1>
