package Action;

import com.opensymphony.xwork2.ActionSupport;
import Object_Action.Manager;


public class Manager_Judge extends ActionSupport{

    private Manager manager;

    public Manager getManager() {
        return manager;
    }

    public void setManager(Manager manager) {
        this.manager = manager;
    }

    public void validate(){
        if (manager.getManagername().equals("")){
            addFieldError("managername","用户名不能为空");
        }else if (manager.getPassword().equals("")) {
            addFieldError("password", "密码不能为空");
        }
    }
}
