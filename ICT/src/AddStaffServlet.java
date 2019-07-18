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
@WebServlet(name = "AddStaffServlet")
public class AddStaffServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {


            String name = request.getParameter("name");
            name = name.replace("<", "&#8249");
            name = name.replace(">", "&#8250");
            String position = request.getParameter("position");
            position = position.replace("<", "&#8249");
            position = position.replace(">", "&#8250");
            String school = request.getParameter("school");
            school = school.replace("<", "&#8249");
            school = school.replace(">", "&#8250");
            String tel = request.getParameter("tel");
            tel = tel.replace("<", "&#8249");
            tel = tel.replace("<", "&#8250");
            String email = request.getParameter("email");
            email = email.replace("<", "&#8249");
            email = email.replace("<", "&#8250");

            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "";
            Part image = request.getPart("image");
            if(image.getSize()!=0)
            {
                InputStream is = image.getInputStream();
                byte[] data = new byte[1 * 1024 * 1024 * 1024];
                int len = is.read(data);

                OutputStream os = new FileOutputStream(getServletContext().getRealPath("./images") + "/" + name + ".png");
                os.write(data, 0, len);
                os.close();

                sql = "insert into staff(staff_name, position, school, tel, email, image) values ('" + name + "', '" + position + "', '" + school + "', '" + tel + "', '" + email + "', '" + name + ".png')";
            }

            else
            {
                sql = "insert into staff(staff_name, position, school, tel, email, image) values ('" + name + "', '" + position + "', '" + school + "', '" + tel + "', '" + email + "', 'profile.png')";

            }
            stm.execute(sql);


            ResultSet rs = stm.executeQuery("select * from staff order by staff_id desc");
            rs.next();
            String staff_id = rs.getString("staff_id");

            String EduBg = request.getParameter("Educational-Background");
            String EduBgs[] = EduBg.split("\n");
            for (String str : EduBgs) {
                sql = "insert into edu_bg(staff_id, description) values (" + staff_id + ", '" + str + "')";
                stm.execute(sql);
            }

            String ResInt = request.getParameter("Research-Interest");
            String ResInts[] = ResInt.split("\n");
            for(String str: ResInts)
            {
                sql = "insert into r_interest(staff_id, description) values (" + staff_id + ", '" + str + "')";
                stm.execute(sql);
            }

            String AcadExp = request.getParameter("Academic-Experience");
            String AcadExps[] = AcadExp.split("\n");
            for(String str: AcadExps)
            {
                sql = "insert into acad_exp(staff_id, description) values (" + staff_id + ", '" + str + "')";
                stm.execute(sql);
            }

            String RepPub = request.getParameter("Representative-Publications");
            String RepPubs[] = RepPub.split("\n");
            for(String str: RepPubs)
            {
                sql = "insert into rep_pub(staff_id, description) values (" + staff_id + ", '" + str + "')";
                stm.execute(sql);
            }

            response.sendRedirect("admin-staff-panel.jsp");
        }

        catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
