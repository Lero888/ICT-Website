package net.model;

import java.util.Comparator;

public class StaffBean {

    protected String staff_id;
    protected String staff_name;
    protected String position;
    protected String school;
    protected String tel;
    protected String email;
    protected String image;

    public static Comparator<StaffBean> StaffNameComparator = new Comparator<StaffBean>() {

        public int compare(StaffBean s1, StaffBean s2) {
            String StaffName1 = s1.getStaff_name().toUpperCase();
            String StaffName2 = s2.getStaff_name().toUpperCase();

            //Return ascending order
            return StaffName1.compareTo(StaffName2);
        }
    };

    public String getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(String staff_id) {
        this.staff_id = staff_id;
    }

    public String getStaff_name() {
        return staff_name;
    }

    public void setStaff_name(String staff_name) {
        this.staff_name = staff_name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}
