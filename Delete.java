import java.math.BigDecimal;
import java.sql.*;

public class Delete {
    public static void main(String[] args) {
        delete(2);
    }
    public static void delete(int id) {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            try{
                //创建数据库连接Connection
                connection = DEUTil.getConnection2();
                //根据数据库连接创建操作命令对象Statement
                String sql = "delete from exam_result" + " where id=?";
                statement = connection.prepareStatement(sql);
                //操作命令对象执行sql语句,返回结果集resultSet
                //resultSet类似List<Map<String, Object>>
                statement.setInt(1,id);
                //新增 修改 删除 操作 ,都使用exexuteUpdate()方法
                int num = statement.executeUpdate();
                if(num > 0){
                    System.out.println("修改成功");
                }else{
                    System.out.println("修改失败");
                }
            }finally {
                //释放资源
                DEUTil.close(connection, statement, null);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
