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

public class UserInsert extends ActionSupport implements SessionAware {
    private User user;
    private Map<String,Object> session;
    private Connection conn;
    private PreparedStatement pst;

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }

    public String Insert() throws SQLException {

        String sql = "insert into users(username,password,phone) values('"+user.getUsername()+"','"+user.getPassword()+"','"+user.getPhone()+"')";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.executeUpdate();
        return "success";
    }
    public String Update() throws SQLException {

        String sql = "update users set username='"+user.getUsername()+"',password='"+user.getPassword()+"',phone='"+user.getPhone()+"' where username='"+session.get("Login_Name")+"'";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.executeUpdate();

        return "success";
    }
}
