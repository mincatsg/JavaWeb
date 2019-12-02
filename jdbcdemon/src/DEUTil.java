import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import javax.sql.DataSource;
import java.sql.*;

public class DEUTil {
    private static final String URL = "jdbc:mysql://localhost:3306/test1";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

 //DataSource静态变量+静态代码块方式
    private static DataSource DATASOURCE = new MysqlDataSource();

    static {
        ((MysqlDataSource)DATASOURCE).setURL(URL);
        ((MysqlDataSource)DATASOURCE).setUser(USERNAME);
        ((MysqlDataSource)DATASOURCE).setPassword(PASSWORD);
    }
    private static DataSource DATASOURCE2;

    private DEUTil(){

    }
    public static Connection getConnection1() {
        Connection connection = null;
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(URL,USERNAME, PASSWORD);
            } finally {
                connection.close();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }


    public static Connection getConnection2(){  //第二种方法
        try {
            return DATASOURCE.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("数据库连接失败");
        }
    }
    //单例的方式
    public  static DataSource DATASource(){
        if(DATASOURCE2 == null){
            DATASOURCE2 = new MysqlDataSource();
            ((MysqlDataSource)DATASOURCE2).setURL(URL);
            ((MysqlDataSource)DATASOURCE2).setUser(USERNAME);
            ((MysqlDataSource)DATASOURCE2).setPassword(PASSWORD);
        }
        return DATASOURCE2;
    }

    public static  void close(Connection c, Statement s, ResultSet r){
        //释放资源
        try {
            if(r != null) {
                r.close();
            }
            if(s != null) {
                s.close();
            }
            if(c != null) {
                c.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("数据库释放资源失败");
        }
    }
    public static void main(String[] args) {
        System.out.println(getConnection1());
        System.out.println(getConnection2());
        System.out.println(DATASource());
    }
}
