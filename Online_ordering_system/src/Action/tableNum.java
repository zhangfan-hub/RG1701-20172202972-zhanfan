package Action;

import DBC.DBConn;
import Object_Action.Food;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Map;

public class tableNum extends ActionSupport implements SessionAware {

    private String ID;
    private String tableID;
    private String Kind_Name;
    private String DB_Name;
    private String list;
    private Food food;
    private ArrayList<Food> Update_list = new ArrayList<Food>();
    private ArrayList<Food> temp_list = new ArrayList<Food>();
    private Connection conn;
    private PreparedStatement pst;

    public String getDB_Name() {
        return DB_Name;
    }

    public void setDB_Name(String DB_Name) {
        this.DB_Name = DB_Name;
    }

    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }

    public String getList() {
        return list;
    }

    public void setList(String list) {
        this.list = list;
    }

    public String getKind_Name() {
        return Kind_Name;
    }

    public void setKind_Name(String kind_Name) {
        Kind_Name = kind_Name;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    private Map<String,Object> session;

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String Delete() throws Exception{

        tableID = "table"+ID;
        conn = DBConn.getConnection();
        String sql = "delete from "+tableID+"";
        pst=conn.prepareStatement(sql);
        pst.executeUpdate();
        session.put("tableID",ID);
        System.out.print(session.get("tableID"));
        return "success";
    }

    public String TableID() throws Exception{

        session.put("tableID",ID);
        System.out.print(session.get("tableID"));
        return "success";
    }

    public String Save_Kind_Name() throws Exception{

        session.put("Kind_Name",Kind_Name);
        session.put("list",list);
        session.put("DB_Name",DB_Name);
        return "success";
    }

    public String Kind_Name() throws Exception{

        temp_list = (ArrayList<Food>) session.get(session.get("list"));
        for (int i=0;i<temp_list.size();i++)
        {
            Food food = new Food();
            food = temp_list.get(i);
            Update_list.add(food);
        }
        session.put("Update_list",Update_list);
        return "success";
    }

}
