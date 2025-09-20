import java.io.*;
        import javax.servlet.*;
        import javax.servlet.http.*;
        import javax.servlet.annotation.WebServlet;

@WebServlet("/ShowData")
public class ShowData extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter pw = resp.getWriter();
        pw.println("<h1>Fullname : " + req.getParameter("fullName") + " </h1>");
        pw.println("<h1>Age : " + req.getParameter("age") + " </h1>");
    }
}
