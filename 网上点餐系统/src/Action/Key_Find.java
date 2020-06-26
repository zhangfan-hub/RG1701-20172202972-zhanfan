package Action;

import DBC.DBConn;
import Object_Action.Food;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

public class Key_Find implements SessionAware {
    private String key;
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    private Map<String,Object> session;
    private ArrayList<Food> keyFind_list = new ArrayList<Food>();

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String execute() throws SQLException{

        String sql = "select * from allfood where foodname like ?";
        conn = DBConn.getConnection();
        pst=conn.prepareStatement(sql);
        pst.setString(1,"%"+key+"%");
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setPrice(rs.getFloat("price"));
            keyFind_list.add(food);
        }
        session.put("keyFind_list",keyFind_list);
        return "success";
    }
}
