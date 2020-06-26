package Action;

import com.opensymphony.xwork2.ActionSupport;

import java.util.regex.Pattern;

public class Manager_Judge_Two extends ActionSupport {

    private String managername;
    private String password;
    private String password2;

    public String getManagername() {
        return managername;
    }

    public void setManagername(String managername) {
        this.managername = managername;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public void validate(){

        if (managername == ""){
            addFieldError("managername","名称不能为空");
        }else if (!Pattern.matches("\\w{4,15}", managername)){
            addFieldError("managername", "用户名必须是字母数字的组合且长度须在（4-15）之间");
        }
        if (password == "") {
            addFieldError("password", "密码不能为空");
        }else if (!Pattern.matches("\\w{4,15}", password.trim())){
            addFieldError("password", "密码必须是字母数字组合且长度须在（4-15）之间");
        }
        if (password2 == "") {
            addFieldError("password2", "确认密码不能为空");
        } else if (!password2.equals(password)) {
            addFieldError("password2", "密码输入不一致");
        }
    }
}
