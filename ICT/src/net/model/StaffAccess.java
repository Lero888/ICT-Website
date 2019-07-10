package net.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StaffAccess {
    public StaffAccess()
    {

    }

    public List<StaffBean> get()
    {
        List<StaffBean> list_staffs = new ArrayList<StaffBean>();
        try{


            Class.forName("com.mysql.jdbc.Driver");
            Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
            String sql = "select staff_id as id, staff.staff_name as name, staff.image as image, staff.position as pos, staff.school as sch, staff.tel as tel, staff.email as email\n" +
                    "from staff\n";
            ResultSet rs= stm.executeQuery(sql);

            while (rs.next())
            {

                StaffBean bean = new StaffBean();
                bean.staff_id = rs.getString("id");
                bean.staff_name = rs.getString("name");
                bean.image = rs.getString("image");
                bean.position = rs.getString("pos");
                bean.school = rs.getString("sch");
                bean.tel = rs.getString("tel");
                bean.email = rs.getString("email");
                list_staffs.add(bean);

            }

        }

        catch (Exception e)
        {

        }

        return list_staffs;

    }
}
