package net.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EduBgAccess {
    public EduBgAccess()
    {

    }

    public List<EduBgBean> get()
    {
        List<EduBgBean> list_EduBgs = new ArrayList<EduBgBean>();
        try{


            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "select * from edu_bg";
            ResultSet rs= stm.executeQuery(sql);

            while (rs.next())
            {

                EduBgBean bean = new EduBgBean();
                bean.edu_id = rs.getString("edu_id");
                bean.staff_id = rs.getString("staff_id");
                bean.description = rs.getString("description");
                list_EduBgs.add(bean);

            }

        }

        catch (Exception e)
        {

        }

        return list_EduBgs;

    }
}
