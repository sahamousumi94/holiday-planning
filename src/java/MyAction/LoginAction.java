/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package MyAction;

import StrutsBean.LoginBean;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;

/**
 *
 * @author abhay
 */
public class LoginAction extends org.apache.struts.action.Action {
    
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
        LoginBean lb=(LoginBean)form;
        String name=lb.getT1();
        String pass=lb.getT2();
      
      
        System.out.print(name);
        System.out.print(pass);
         String status=null;
         int flag=lb.validate();

     
           if(flag==1)
       {
               request.setAttribute("nm", name);
           status="ok";
       }
 else
       {
           request.setAttribute("flag", flag);
           //request.setAttribute("flag", f);
           status="nk";
 }


 return mapping.findForward(status);
 
       
    }
}
