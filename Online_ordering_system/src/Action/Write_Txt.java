package Action;

import Object_Action.Food;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.io.*;
import java.util.ArrayList;
import java.util.Map;

public class Write_Txt extends ActionSupport implements SessionAware {

    private Map<String,Object> session;
    private ArrayList<Food> food_list = new ArrayList<Food>();
    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }


    public String Write() throws IOException{

        String temp = "D:\\Table_Money\\table";
        String tableID = (String) session.get("tableID");
        String path = temp+tableID+".txt";
        int price = (int) session.get("Allprice");
        String Price = String.valueOf(price);
        File file =new File(path);
        if(!file.exists()) {
            file.createNewFile();
        }
        BufferedWriter Writer = new BufferedWriter(new FileWriter(path));
        food_list = (ArrayList<Food>) session.get("tablefood_list");
        Writer.write("菜名\t价格\t数量\t备注\n\n");
        for (int i=0;i<food_list.size();i++){
            Food food = new Food();
            food = food_list.get(i);
            int x = (int) food.getPrice();
            int num = food.getNum();
            String y = String.valueOf(x);
            String nums = String.valueOf(num);
            Writer.write(food.getFoodname()+"\t");
            Writer.write(y+"\t");
            Writer.write(nums+"\t");
            Writer.write(food.getMark());
            Writer.write("\n\n");
        }
        Writer.write("总价："+Price);
        Writer.close();
        return "success";
    }
}
