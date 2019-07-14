package net.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NewsAccess {
    public NewsAccess()
    {

    }

    public List<NewsBean> get()
    {
        List<NewsBean> list_News = new ArrayList<NewsBean>();
        try{


            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "select * from news";
            ResultSet rs= stm.executeQuery(sql);

            while (rs.next())
            {

                NewsBean bean = new NewsBean();
                bean.idnews = rs.getString("idnews");
                bean.title = rs.getString("title");
                bean.caption = rs.getString("caption");
                bean.thumbnail = rs.getString("thumbnail");
                bean.datecreated = rs.getDate("datecreated");
                bean.category = rs.getString("category");
                list_News.add(bean);

            }

        }

        catch (Exception e)
        {

        }

        return list_News;

    }
}
