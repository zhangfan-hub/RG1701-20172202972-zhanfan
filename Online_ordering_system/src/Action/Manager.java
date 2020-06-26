package Action;

import DBC.DBConn;
import Object_Action.Customer_Cost;
import Object_Action.Food;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

public class Manager extends ActionSupport implements SessionAware {
    private Map<String,Object> session;
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    private float Allmoney = 0;
    private ArrayList<Customer_Cost> cust_list = new ArrayList<Customer_Cost>();
    private ArrayList<Food> menu_sort_list = new ArrayList<Food>();

    public ArrayList<Customer_Cost> getCust_list() {
        return cust_list;
    }

    public void setCust_list(ArrayList<Customer_Cost> cust_list) {
        this.cust_list = cust_list;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String Select() throws Exception {
        conn = DBConn.getConnection();
        String sql = "select * from customer_cost";
        pst=conn.prepareStatement(sql);
        rs=pst.executeQuery();
        while (rs.next()){
            Customer_Cost cust = new Customer_Cost();
            cust.setTableID(rs.getString("tableID"));
            cust.setMoney(rs.getFloat("money"));
            Allmoney+=rs.getFloat("money");
            cust.setGet_date(rs.getString("Get_date"));
            cust_list.add(cust);
        }
        session.put("cust_list",cust_list);
        session.put("Allmoney",Allmoney);
        return "success";
    }

    public String Manager_Menu_Sort() throws Exception{
        conn = DBConn.getConnection();
        String sql = "select foodname,counts from allfood order by counts desc ";
        pst=conn.prepareStatement(sql);
        rs=pst.executeQuery();
        while (rs.next()){
            Food food = new Food();
            food.setFoodname(rs.getString("foodname"));
            food.setCounts(rs.getInt("counts"));
            menu_sort_list.add(food);
        }
        session.put("menu_sort_list",menu_sort_list);
        return "success";
    }

}
