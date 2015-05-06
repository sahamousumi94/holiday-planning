/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package MyAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import StrutsBean.bookingBean;
import java.sql.*;
import java.sql.ResultSet;
/**
 *
 * @author abhay
 */
public class bookingAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
          bookingBean sb=(bookingBean)form;
        String from=sb.getFrom();
        String to=sb.getTo();
        String date=sb.getDate();
        String persons=sb.getPersons();
        String days=sb.getDays();
        String tkt_type=sb.getTkt_type();
        String status=null;
        int flag=1,i=0;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays","root","password");
        Statement st=con.createStatement();
    //    ResultSet rs=st.executeQuery("select * from sign_up");
        i=st.executeUpdate("insert into tkt_booking (start,end,date,persons,days,tkt_type)values('"+from+"','"+to+"','"+date+"','"+persons+"','"+days+"','"+tkt_type+"')");
        System.out.print(i);
       /* while(rs.next())
        {
            System.out.print("in while");
            if(rs.getString(1).equals(name)&& rs.getString(2).equals(password))
            {
                System.out.print("hhjjknk");
                System.out.print(flag);

            flag=1;
             break;

            }

        

        }*/
        }
          catch(ClassNotFoundException e)
      {
          System.out.print("class not found");
      }

    catch(SQLException e)

      {
        System.out.print("sql exceptioonn");

        }

           if(i>0){
        status="ok";
       }
else{

            request.setAttribute("from", from);
            request.setAttribute("to", to);
            request.setAttribute("date",date);
            request.setAttribute("persons",persons);
            request.setAttribute("days",days);
            request.setAttribute("tkt_type",tkt_type);
            status="nk";
 }
  /*        if(flag==1)
       {
           status="ok";
       }
 else
       {
           request.setAttribute("flag", flag);
           //request.setAttribute("flag", f);
           status="nk";
 }*/


        return mapping.findForward(status);
}
    
}
