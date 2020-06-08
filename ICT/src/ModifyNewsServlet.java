import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.lang.String;
import java.sql.DriverManager;
import java.sql.Statement;

@MultipartConfig
@WebServlet(name = "ModifyNewsServlet")
public class ModifyNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();

            String title = request.getParameter("title");
            String temp = title.replaceAll("[^a-zA-Z0-9]","");
            String news_id = request.getParameter("nid");
            String sql="";

            Part image = request.getPart("image");
            if(image.getSize()!=0)
            {
                InputStream is = image.getInputStream();
                byte[] data = new byte[1024 * 1024 * 1024];
                int len = is.read(data);
                OutputStream os = new FileOutputStream(getServletContext().getRealPath("./images") + "/" + temp + ".png");
                os.write(data, 0, len);
                os.close();

                sql = "update news set title = '" + request.getParameter("title") + "', thumbnail= '"+ temp +".png',caption = '" + request.getParameter("caption") + "',  datecreated = '" + request.getParameter("date") + "', category = '" + request.getParameter("category") + "' where idnews = " + news_id + "";

            }

            else
            {
                sql = "update news set title = '" + request.getParameter("title") + "', caption = '" + request.getParameter("caption") + "',  datecreated = '" + request.getParameter("date") + "', category = '" + request.getParameter("category") + "' where idnews = " + news_id + "";
            }
            stm.execute(sql);


            String news_content = request.getParameter("n_content");
            String news_c[] = news_content.split("\n");
            sql = "delete from news_content where nid = " + request.getParameter("nid") + "";
            stm.execute(sql);


            PrintWriter out = new PrintWriter(System.out);
            for(String str: news_c)
            {
                if(!str.isBlank())
                {
                    sql = "insert into news_content(nid, content) values (" + news_id + ", '" + str + "')";
                    stm.execute(sql);
                }
            }

            response.sendRedirect("admin-news-panel.jsp");
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}