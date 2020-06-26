package Action;

import DBC.DBConn;
import Object_Action.Food;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

public class Select_Menue extends ActionSupport implements SessionAware {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    private Food food;
    private Map<String,Object> session;
    private ArrayList<Food> chuan_list = new ArrayList<Food>();
    private ArrayList<Food> sea_list = new ArrayList<Food>();
    private ArrayList<Food> sweet_list = new ArrayList<Food>();
    private ArrayList<Food> beverage_list = new ArrayList<Food>();
    private ArrayList<Food> stable_list = new ArrayList<Food>();

    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String execute() throws Exception{

        String sql1 = "select * from chuanfood";
        String sql2 = "select * from seafood";
        String sql3 = "select * from sweetfood";
        String sql4 = "select * from stablefood";
        String sql5 = "select * from beverage";

        conn = DBConn.getConnection();
        pst=conn.prepareStatement(sql1);
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setPrice(rs.getFloat("price"));
            chuan_list.add(food);
        }
        session.put("chuan_list",chuan_list);

        pst=conn.prepareStatement(sql2);
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setPrice(rs.getFloat("price"));
            sea_list.add(food);
        }
        session.put("sea_list",sea_list);

        pst=conn.prepareStatement(sql3);
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setPrice(rs.getFloat("price"));
            sweet_list.add(food);
        }
        session.put("sweet_list",sweet_list);

        pst=conn.prepareStatement(sql4);
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setPrice(rs.getFloat("price"));
            stable_list.add(food);
        }
        session.put("stable_list",stable_list);

        pst=conn.prepareStatement(sql5);
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setPrice(rs.getFloat("price"));
            beverage_list.add(food);
        }
        session.put("beverage_list",beverage_list);

        return "success";
    }

}
