package Action;

import DBC.DBConn;
import Object_Action.Food;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import java.lang.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

public class Ordering_Menue extends ActionSupport implements SessionAware {
    private String foodName;
    private float price;
    private int num;
    private String mark;
    private String ID;
    private String tableID;
    public int Allprice = 0;
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    private Map<String,Object> session;
    private ArrayList<Food> tablefood_list = new ArrayList<Food>();

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }


    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String Insert() throws SQLException {

        System.out.print(Allprice);
        ID = (String) session.get("tableID");
        tableID = "table"+ID;
        String sql = "Insert into "+tableID+" (foodname,price,num,mark) values('"+foodName+"','"+price+"','"+num+"','"+mark+"')";
        conn = DBConn.getConnection();
        pst = conn.prepareStatement(sql);
        pst.executeUpdate();
        return "success";

    }

    public String Select() throws SQLException, ParseException {
        ID = (String) session.get("tableID");
        tableID = "table"+ID;
        String sql = "select * from "+tableID+"";
        conn = DBConn.getConnection();
        pst=conn.prepareStatement(sql);
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setPrice(rs.getFloat("price"));
            food.setNum(rs.getInt("num"));
            food.setMark(rs.getString("mark"));
            Allprice+=rs.getInt("num")*rs.getFloat("price");
            tablefood_list.add(food);
        }

        session.put("tablefood_list",tablefood_list);
        session.put("Allprice",Allprice);
        return "success";
    }
}
