package File_Upload;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Map;

import DBC.DBConn;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

public class UploadAction extends ActionSupport implements SessionAware {

    private String price;
    private String filename;
    private Map<String,Object> session;
    private Connection conn;
    private PreparedStatement pst;

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    private static final long serialVersionUID = 1L;
    //对应表单的file1  <input type="file" name="file1"/>
    private File file1;
    //当前上传的文件名
    private String file1FileName;
    //文件类型(MIME)
    private String file1ContentType;

    public File getFile1() {
        return file1;
    }

    public String getFile1FileName() {
        return file1FileName;
    }

    public String getFile1ContentType() {
        return file1ContentType;
    }

    public void setFile1(File file1) {
        this.file1 = file1;
    }
    public void setFile1FileName(String file1FileName) {
        this.file1FileName = file1FileName;
    }
    public void setFile1ContentType(String file1ContentType) {
        this.file1ContentType = file1ContentType;
    }

    @Override
    public String execute() throws Exception {

        conn = DBConn.getConnection();
        String DB_Name = (String) session.get("DB_Name");

        //开始拿到上传的文件，进行处理,上传之前，要创建一个upload目录
        System.out.println("测试上传的文件");
        //把文件上传到upload目录，获取上传的目录路径
        String path="D:\\tomcat\\apache-tomcat-8.0.20\\Ordering_system\\web\\Jsp\\Pictures\\Menue";
        //创建目标文件对象,文件名file1FileName，格式_FileName

        File destFile=new File(path,file1FileName);
        //把上传的文件，拷贝到目标文件中
        FileUtils.copyFile(file1, destFile);

        String sql = "insert into " +DB_Name+ " (foodname,price) values('"+filename+"','"+price+"')";
        pst = conn.prepareStatement(sql);
        pst.executeUpdate();

        String sql2 = "insert into allfood(foodname,price,counts) values('"+filename+"','"+price+"','0')";
        pst = conn.prepareStatement(sql2);
        pst.executeUpdate();
        return SUCCESS;
    }

}
