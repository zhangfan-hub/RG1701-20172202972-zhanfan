package Action;

import DBC.DBConn;
import Object_Action.Manager;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

public class Manager_Login_And_Update extends ActionSupport implements SessionAware {

    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    private String old_password;

    private String managername;
    private String password;
    private String password2;

    private Manager manager;
    private Map<String,Object> session;

    public String getManagername() {
        return managername;
    }

    public void setManagername(String managername) {
        this.managername = managername;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public String getOld_password() {
        return old_password;
    }

    public void setOld_password(String old_password) {
        this.old_password = old_password;
    }

    public Manager getManager() {
        return manager;
    }

    public void setManager(Manager manager) {
        this.manager = manager;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String Manager_Login_Judge() throws SQLException {
        String sql = "select mgname,password from manager";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        rs=pst.executeQuery();

        while (rs.next()){
            if (manager.getManagername().equals(rs.getString("mgname"))){
                if (manager.getPassword().equals(rs.getString("password"))){
                    session.put("Manager_Name",manager.getManagername());
                    return "success";
                }

            }
        }
        addFieldError("manager_judge","用户名或密码错误！");
        return "login";
    }

    public String Old_Password_Judge() throws SQLException{
        String Manager_Name = (String) session.get("Manager_Name");
        String sql = "select password from manager where mgname=?";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.setString(1,Manager_Name);
        rs = pst.executeQuery();
        while (rs.next()){
            if (old_password.equals(rs.getString("password"))){
                return "success";
            }
        }
        addFieldError("old_password_judge","密码错误请重新输入！");
        return "login";
    }
    public String Manager_Info_Update() throws SQLException {
        String Manager_Name = (String) session.get("Manager_Name");
        String sql = "update manager set mgname=?,password=? where mgname=?";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.setString(1,managername);
        pst.setString(2,password);
        pst.setString(3,Manager_Name);
        pst.executeUpdate();
        return "success";
    }
}
