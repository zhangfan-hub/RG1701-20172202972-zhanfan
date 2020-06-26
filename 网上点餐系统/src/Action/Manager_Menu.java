package Action;

import DBC.DBConn;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

public class Manager_Menu extends ActionSupport implements SessionAware {

    private String foodname;
    private String price;
    private Connection conn;
    private PreparedStatement pst;
    private Map<String,Object> session;

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String Delete() throws SQLException {

        String DB_Name = (String) session.get("DB_Name");
        String sql = "delete from " +DB_Name+ " where foodname=?";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.setString(1,foodname);
        pst.executeUpdate();

        String sql2 = "delete from allfood where foodname=?";
        pst = conn.prepareStatement(sql2);
        pst.setString(1,foodname);
        pst.executeUpdate();

        return "success";
    }
    public String Update() throws SQLException {

        String DB_Name = (String) session.get("DB_Name");
        String sql = "update " +DB_Name+ " set price=? where foodname=?";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.setString(1,price);
        pst.setString(2,foodname);
        pst.executeUpdate();

        String sql2 = "update allfood set price=? where foodname=?";
        pst = conn.prepareStatement(sql2);
        pst.setString(1,price);
        pst.setString(2,foodname);
        pst.executeUpdate();

        return "success";
        
    }

}
