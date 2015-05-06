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

public class bookingBean extends org.apache.struts.action.ActionForm {
   private String from;
   private String to;
   private String date;
   private String persons;
   private String days;
   private String tkt_type;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getPersons() {
        return persons;
    }

    public void setPersons(String persons) {
        this.persons = persons;
    }

    public String getTkt_type() {
        return tkt_type;
    }

    public void setTkt_type(String tkt_type) {
        this.tkt_type = tkt_type;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

}
