/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Nishimwe Elysee
 */
public class studentModel {
    private String studentIdMsg="";
    private String nameMsg="";
    private String genderMsg="";
    private String dobMsg="";
    private String studentId="";
    private String name="";
    private String gender="";
    private String dob="";
    public void applyRequestValues(String id,String name,String gender,String dob){
        this.dob=dob;
        this.gender=gender;
        this.name=name;
        this.studentId=id;
    }

    public String getStudentIdMsg() {
        return studentIdMsg;
    }

    public void setStudentIdMsg(String studentIdMsg) {
        this.studentIdMsg = studentIdMsg;
    }

    public String getNameMsg() {
        return nameMsg;
    }

    public void setNameMsg(String nameMsg) {
        this.nameMsg = nameMsg;
    }

    public String getGenderMsg() {
        return genderMsg;
    }

    public void setGenderMsg(String genderMsg) {
        this.genderMsg = genderMsg;
    }

    public String getDobMsg() {
        return dobMsg;
    }

    public void setDobMsg(String dobMsg) {
        this.dobMsg = dobMsg;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
    
    
    
}
