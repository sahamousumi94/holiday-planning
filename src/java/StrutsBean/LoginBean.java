/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package StrutsBean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import java.sql.*;
import conn.MyCon;

/**
 *
 * @author abhay
 */
public class LoginBean extends org.apache.struts.action.ActionForm {
    
  private String t1;
  private String t2;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

  

   
   
      public int validate()

    {
          int flag=0;
           try{



          System.out.print("hjjgkjh");
       Class.forName("com.mysql.jdbc.Driver");
     Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/holidays", "root", "password");
    Statement st=con.createStatement();
   ResultSet  rs1=st.executeQuery("select * from sign_up");

  System.out.println("hello");


        while(rs1.next())
        {
            System.out.print("in while");
            if(rs1.getString(1).equals(t1)&& rs1.getString(2).equals(t2))
            {
                System.out.print("hhjjknk");
                System.out.print(flag);

            flag=1;
             break;

            }

        }


        }

      catch(ClassNotFoundException e)
      {
          System.out.print("class not foundddddddddd");
      }

    catch(SQLException e)

      {
        System.out.print("sqllllllllllllllllll exceptioonn");

        }

  return flag;


      }
 
      }


