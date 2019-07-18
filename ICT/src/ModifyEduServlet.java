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
            String staff_id = request.getParameter("sid");

            String EduBg = request.getParameter("educational");
            String EduBgs[] = EduBg.split("\n");
            String sql = "delete from edu_bg where staff_id = " + request.getParameter("sid") + "";
            stm.execute(sql);
            sql = "delete from edu_bg where staff_id=" + request.getParameter("sid") + " and description = \"\" ";
            stm.execute(sql);
            for(String str: EduBgs)
            {
                if(!(str.length()==1)) {
                    sql = "insert into edu_bg(staff_id, description) values (" + staff_id + ", '" + str + "')";
                    stm.execute(sql);
                }
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
