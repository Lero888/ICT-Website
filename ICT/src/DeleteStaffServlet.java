import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(name = "DeleteStaffServlet")
public class DeleteStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String staff_id = request.getParameter("sid");
            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "delete from staff where staff_id= " + staff_id;
            stm.execute(sql);
            sql = "delete from acad_exp where staff_id= " + staff_id;
            stm.execute(sql);
            sql = "delete from edu_bg where staff_id= " + staff_id;
            stm.execute(sql);
            sql = "delete from r_interest where staff_id= " + staff_id;
            stm.execute(sql);
            sql = "delete from rep_pub where staff_id= " + staff_id;
            stm.execute(sql);

            response.sendRedirect("admin-staff-panel.jsp");
        }

        catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
