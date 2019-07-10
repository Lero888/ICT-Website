package net.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ResIntAccess {
    public ResIntAccess()
    {

    }

    public List<ResIntBean> get()
    {
        List<ResIntBean> list_ResInts = new ArrayList<ResIntBean>();
        try{


            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "select * from r_interest";
            ResultSet rs= stm.executeQuery(sql);

            while (rs.next())
            {

                ResIntBean bean = new ResIntBean();
                bean.rid = rs.getString("rid");
                bean.staff_id = rs.getString("staff_id");
                bean.description = rs.getString("description");
                list_ResInts.add(bean);
            }

        }

        catch (Exception e)
        {

        }

        return list_ResInts;

    }
}
