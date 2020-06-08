import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(name = "ModifyRepresentativeServlet")
public class ModifyRepresentativeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();

            String staff_id = request.getParameter("sid");

            String RepPub = request.getParameter("representative");
            String RepPubs[] = RepPub.split("\n");
            String sql = "delete from rep_pub where staff_id = " + request.getParameter("sid") + "";
            stm.execute(sql);

            PrintWriter out = new PrintWriter(System.out);
            for(String str: RepPubs)
            {
                if(!str.isBlank())
                {
                    sql = "insert into rep_pub(staff_id, description) values (" + staff_id + ", '" + str + "')";
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