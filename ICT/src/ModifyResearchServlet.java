import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(name = "ModifyResearchServlet")
public class ModifyResearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();

            String staff_id = request.getParameter("sid");

            String ResInt = request.getParameter("research");
            String ResInts[] = ResInt.split("\n");
            String sql = "delete from r_interest where staff_id = " + request.getParameter("sid") + "";
            stm.execute(sql);

            PrintWriter out = new PrintWriter(System.out);
            for(String str: ResInts)
            {
                if(!str.isBlank())
                {
                    sql = "insert into r_interest(staff_id, description) values (" + staff_id + ", '" + str + "')";
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