package net.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AcadExpAccess {

    public AcadExpAccess()
    {

    }

    public List<AcadExpBean> get()
    {
        List<AcadExpBean> list_AcadExps = new ArrayList<AcadExpBean>();
        try{


            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "select aid as aid, staff_id as sid, description as description from acad_exp";
            ResultSet rs= stm.executeQuery(sql);

            while (rs.next())
            {

                AcadExpBean bean = new AcadExpBean();
                bean.aid = rs.getString("aid");
                bean.staff_id = rs.getString("sid");
                bean.description = rs.getString("description");
                list_AcadExps.add(bean);

            }

        }

        catch (Exception e)
        {

        }

        return list_AcadExps;

    }
}
