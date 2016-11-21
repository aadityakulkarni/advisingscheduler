/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uta.cse4361.databases;
import java.sql.SQLException;
import uta.cse4361.beans.WaitListBean;

/**
 *
 * @author aaditya
 */

public class WaitListInsert extends RDBImplCommand{
    private int waitlistId ;
    private String apptdate ;
    private String studentname ;
    private String studentemail;
    private String studentid;
    private String advisorname;
    private String advisoremail;
    private String description;
    private int waitlistno;
    
    private String sqlQuery = "INSERT INTO `waitlist`( `apptdate`, "
            + "`studentname`, `studentemail`, `studentid`, `advisorname`, "
            + "`advisoremail`, `description`, `waitlistno`) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
   
    public WaitListInsert (WaitListBean wb) {
        super();
        this.apptdate = wb.getApptdate() ;
        this.studentname = wb.getStudentname();
        this.studentemail = wb.getStudentemail();
        this.studentid = wb.getStudentid();
        this.advisorname = wb.getAdvisorname();
        this.advisoremail = wb.getAdvisoremail();
        this.description = wb.getDescription();
        this.waitlistno = wb.getWaitlistno();
    }
    @Override
    public void queryDB() throws SQLException {
        try {
            statement = conn.prepareStatement(sqlQuery);
            
            statement.setString(1,this.apptdate);
            statement.setString(2, this.studentname);
            statement.setString(3, this.studentemail);
            statement.setString(4, this.studentid);
            statement.setString(5, this.advisorname);
            statement.setString(6, this.advisoremail);
            statement.setString(7, this.description);
            statement.setInt(8, this.waitlistno);
            statement.executeUpdate();
            processResult();
        } catch (SQLException e) {
            System.out.println("Cannot Be inserted in Waitlist");
        } finally {
            statement.close();
        }
    }

    @Override
    public void processResult() {
        result = "Success";
    }
     
    
}
