import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ict", "root", "xmuy").createStatement();
            String sql = "select admin_id from admin where username = '" + username + "' and password = '" + password + "'";
            ResultSet rs = stm.executeQuery(sql);

            if (rs.next()) {

                Cookie ck_username = new Cookie("username", username);
                Cookie ck_password = new Cookie("password", password);
                ck_username.setMaxAge(24*60*60);
                ck_password.setMaxAge(24*60*60);
                response.addCookie(ck_username);
                response.addCookie(ck_password);

                session.setAttribute("admin_id", rs.getString("admin_id"));
                session.setAttribute("username", username);

                response.sendRedirect("admin-staff-panel.jsp");
                return;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

        out.write("Fail to login...");
        return;
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
