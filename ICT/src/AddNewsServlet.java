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
import java.text.SimpleDateFormat;
import java.util.Date;

@MultipartConfig
@WebServlet(name = "AddNewsServlet")
public class AddNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String title = request.getParameter("title");
            String caption = request.getParameter("caption");
            String category = request.getParameter("category");
            String date = request.getParameter("date");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date createdDate = sdf.parse(date);
            java.sql.Date sDate = new java.sql.Date(createdDate.getTime());

            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "";
            Part image = request.getPart("image");

            InputStream is = image.getInputStream();
            byte[] data = new byte[1024 * 1024 * 1024];
            int len = is.read(data);

            OutputStream os = new FileOutputStream(getServletContext().getRealPath("./images") + "/" + caption + ".png");
            os.write(data, 0, len);
            os.close();

            sql = "insert into news(title, caption, thumbnail, datecreated, category) values ('" + title + "', '" + caption + "', '" + caption + ".png', '" + sDate + "', '" + category + "')";

            stm.execute(sql);

            ResultSet rs = stm.executeQuery("select * from news_content order by nid desc");
            rs.next();
            String news_id = rs.getString("nid");

            String news_content = request.getParameter("n_content");
            String news_c[] = news_content.split("\n");
            for (String str : news_c) {
                sql = "insert into news_content(nid, content) values ('" + news_id + "', '" + str + "')";
                stm.execute(sql);
            }
            response.sendRedirect("admin-news-panel.jsp");
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