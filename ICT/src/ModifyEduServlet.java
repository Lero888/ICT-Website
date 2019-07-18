import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "ModifyEduServlet")
public class ModifyEduServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();

            ResultSet rs = stm.executeQuery("select * from staff order by staff_id desc");
            String staff_id = rs.getString("staff_id");

            String EduBg = request.getParameter("Educational-Background");
            String EduBgs[] = EduBg.split("\n");
            for(String str: EduBgs)
            {
                String sql = "update edu_bg set description = '" + str + "' where staff_id = " + request.getParameter("sid") + "";
                stm.execute(sql);
            }

            response.sendRedirect("admin-background.jsp?sid=" + request.getParameter("sid"));
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
