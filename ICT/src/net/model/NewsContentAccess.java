package net.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NewsContentAccess {

    public NewsContentAccess()
    {

    }

    public List<NewsContentBean> get() {
        List<NewsContentBean> list_NewsContents = new ArrayList<NewsContentBean>();
        try {


            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "select * from news_content";
            ResultSet rs = stm.executeQuery(sql);

            while (rs.next()) {

                NewsContentBean bean = new NewsContentBean();
                bean.ncid = rs.getString("ncid");
                bean.nid = rs.getString("nid");
                bean.content = rs.getString("content");
                list_NewsContents.add(bean);
            }

        } catch (Exception e) {

        }

        return list_NewsContents;
    }

}
