import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdminLogoutServlet")
public class AdminLogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session  = request.getSession();

        response.setContentType("text/html");
        session.invalidate();

        request.getRequestDispatcher("admin-login.jsp").include(request, response);
        Cookie ck=new Cookie("username","");
        ck.setMaxAge(0);
        response.addCookie(ck);
    }
}
