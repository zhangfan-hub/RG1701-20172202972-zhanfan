package Action;

import Object_Action.User;
import com.opensymphony.xwork2.ActionSupport;

import java.util.regex.Pattern;

public class Register_Judge extends ActionSupport {

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void validate(){
        if (user.getUsername() == ""){
            addFieldError("username","用户名不能为空");
        }else if (!Pattern.matches("\\w{4,15}", user.getUsername())){
            addFieldError("username", "用户名必须是字母数字的组合且长度须在（4-15）之间");
        }
        if (user.getPassword()== "") {
            addFieldError("password", "密码不能为空");
        }else if (!Pattern.matches("\\w{4,15}", user.getPassword().trim())){
            addFieldError("password", "密码必须是字母数字组合且长度须在（4-15）之间");
        }
        if (user.getPassword2() == "") {
            addFieldError("password2", "确认密码不能为空");
        } else if (!user.getPassword2().equals(user.getPassword())) {
            addFieldError("password2", "与第一次输入的密码不一致");
        }
        if (user.getPhone() == "") {
            addFieldError("phone", "手机号不能为空");
        } else if(user.getPhone().length() != 11){
            addFieldError("phone", "输入格式错误");
        }
    }
}
