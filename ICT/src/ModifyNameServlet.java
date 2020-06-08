import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(name = "ModifyNameServlet")
public class ModifyNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
//        if(session.getAttribute("status").equals("1") == false)
//        {
//            PrintWriter out = response.getWriter();
//            out.println("You are not admin.");
//            return;
//        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();

            String sql = "update staff set staff_name = '"+ request.getParameter("name") + "' where staff_id = " + request.getParameter("sid") + "";
            stm.execute(sql);
            response.sendRedirect("admin-personal-info.jsp?sid=" + request.getParameter("sid"));
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
