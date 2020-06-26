package Action;

import DBC.DBConn;
import Object_Action.Food;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

public class Insert_Allprice extends ActionSupport implements SessionAware {

    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    private Map<String,Object> session;
    private ArrayList<Food> table_list = new ArrayList<Food>();
    private ArrayList<Food> all_list = new ArrayList<Food>();

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String Insert() throws SQLException {

        conn = DBConn.getConnection();
        String tableID = (String) session.get("tableID");


        table_list = (ArrayList<Food>) session.get("tablefood_list");
        String sql2 = "select * from allfood";
        pst = conn.prepareStatement(sql2);
        rs=pst.executeQuery();
        while (rs.next()){
            for (int i=0;i<table_list.size();i++){
                if (table_list.get(i).getFoodname().equals(rs.getString("foodname"))){
                    String sql3 = "update allfood set counts = counts+1 where foodname = '"+rs.getString("foodname")+"'";
                    pst = conn.prepareStatement(sql3);
                    pst.executeUpdate();
                    break;
                }
            }
        }


        int Allprice = (int) session.get("Allprice");
        String sql = "insert into customer_cost(tableID,money,Get_date) values(?,?,?)";

        pst = conn.prepareStatement(sql);
        pst.setString(1,tableID);
        pst.setInt(2,Allprice);
        pst.setDate(3, new java.sql.Date(new java.util.Date().getTime()));
        pst.executeUpdate();
        return "success";
    }
}
