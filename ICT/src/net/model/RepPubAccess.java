package net.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RepPubAccess {
    public RepPubAccess()
    {

    }

    public List<RepPubBean> get()
    {
        List<RepPubBean> list_RepPubs = new ArrayList<RepPubBean>();
        try{


            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "select * from rep_pub";
            ResultSet rs= stm.executeQuery(sql);

            while (rs.next())
            {

                RepPubBean bean = new RepPubBean();
                bean.rpid = rs.getString("rpid");
                bean.staff_id = rs.getString("staff_id");
                bean.description = rs.getString("description");
                list_RepPubs.add(bean);
            }

        }

        catch (Exception e)
        {

        }

        return list_RepPubs;

    }
}
