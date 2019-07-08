import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
                session.setAttribute("admin_id", rs.getString("admin_id"));
                session.setAttribute("username", username);
                response.sendRedirect("Admin-Staff-Panel.jsp");
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
        response.sendRedirect("login.jsp");
    }
}
