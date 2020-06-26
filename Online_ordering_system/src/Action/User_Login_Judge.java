package Action;

import DBC.DBConn;
import Object_Action.User;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

public class User_Login_Judge extends ActionSupport implements SessionAware {


    private String username;
    private String password;
    private Map<String,Object> session;
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;


    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String Login_Judge() throws SQLException {
        String sql = "select username,password from users";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        rs=pst.executeQuery();
        while (rs.next()){
            if (username.equals(rs.getString("username"))){
                if (password.equals(rs.getString("password"))){
                    session.put("Login_Name",username);
                    return "success";
                }
            }
        }
        addFieldError("judge","用户名或密码错误！");
        return "login";
    }

}
