package Action;

import DBC.DBConn;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.awt.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

public class Delete_Update_myFood extends ActionSupport implements SessionAware {
    private String num;
    private String mark;
    private String foodname;
    private Connection conn;
    private PreparedStatement pst;
    private Map<String,Object> session;

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }


    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public String Delete() throws SQLException {

        String ID = (String)session.get("tableID");
        String tableID ="table"+ID;
        String sql = "delete from "+tableID+" where foodname='"+foodname+"'";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.executeUpdate();
        return "success";
    }

    public String Update() throws SQLException{
        String ID = (String)session.get("tableID");
        String tableID ="table"+ID;
        String sql = "update "+tableID+" set num=?,mark=? where foodname='"+foodname+"'";
        System.out.print("++++"+sql);
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.setString(1,num);
        pst.setString(2,mark);
        pst.executeUpdate();
        return "success";
    }

}
