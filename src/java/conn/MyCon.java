/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package conn;
import java.sql.*;

/**
 *
 * @author abhay
 */
public class MyCon {
     public static Connection getDatabasecon()
    {
         Connection con=null;
        try
        {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays", "root", "password");

    }
        catch(ClassNotFoundException e)
        {
            System.out.print("class not found");
        }
        catch(SQLException e)
        {
             System.out.print("sql exception");
        }
        return con;
        }

}
