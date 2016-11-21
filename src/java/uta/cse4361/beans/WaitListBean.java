/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uta.cse4361.beans;

import uta.cse4361.databases.DatabaseManager;
import uta.cse4361.interfaces.Constants;

/**
 *
 * @author Aaditya
 */
public class WaitListBean  implements Constants {
        
    private int waitlistId = 0;
    private String apptdate = null;
    private String studentname = null;
    private String studentemail = null;
    private String studentid = null;
    private String advisorname = null;
    private String advisoremail = null;
    private String description = null;
    private int waitlistno = 0;

    public String getIntoWaitList(){
    DatabaseManager db = new DatabaseManager();
    db.insertIntoWaitList(this);
    return "";
    }
    
    public int getWaitlistId() {
        return waitlistId;
    }

    public void setWaitlistId(int waitlistId) {
        this.waitlistId = waitlistId;
    }

    public String getApptdate() {
        return apptdate;
    }

    public void setApptdate(String apptdate) {
        this.apptdate = apptdate;
    }

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    public String getStudentemail() {
        return studentemail;
    }

    public void setStudentemail(String studentemail) {
        this.studentemail = studentemail;
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid;
    }

    public String getAdvisorname() {
        return advisorname;
    }

    public void setAdvisorname(String advisorname) {
        this.advisorname = advisorname;
    }

    public String getAdvisoremail() {
        return advisoremail;
    }

    public void setAdvisoremail(String advisoremail) {
        this.advisoremail = advisoremail;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getWaitlistno() {
        return waitlistno;
    }

    public void setWaitlistno(int waitlistno) {
        this.waitlistno = waitlistno;
    }
   
    
    
    
}
