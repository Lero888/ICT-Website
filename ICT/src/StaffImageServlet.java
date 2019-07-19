import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@MultipartConfig
@WebServlet(name = "StaffImageServlet")
public class StaffImageServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sid = request.getParameter("sid");
            Part image = request.getPart("image");

            if(image.getSize()==0) {
                response.sendRedirect("admin-image.jsp?sid=" + sid);
            }
            else {
                InputStream is = image.getInputStream();
                byte[] data = new byte[1 * 1024 * 1024 * 1024];
                int len = is.read(data);

                Class.forName("com.mysql.jdbc.Driver");
                Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
                ResultSet rs = stm.executeQuery("select staff_name from staff where staff_id =" + sid + " ");
                rs.next();

                OutputStream os = new FileOutputStream(getServletContext().getRealPath("./images") + "/" + rs.getString("staff_name") + ".png");
                os.write(data, 0, len);
                os.close();

                stm.execute("update staff set image = '" + rs.getString("staff_name") + ".png' where staff_id =" + sid);


                response.sendRedirect("admin-image.jsp?sid=" + sid);
            }
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
