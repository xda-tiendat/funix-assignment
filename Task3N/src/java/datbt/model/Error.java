/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.model;

/**
 *
 * @author xdati
 */
public class Error {
    private String errUser;
    private String errPass;
    private String errConfirm;
    private String errFullName;
    private String errEmail;

    public Error() {
    }

    public String getErrUser() {
        return errUser;
    }

    public void setErrUser(String errUser) {
        this.errUser = errUser;
    }

    public String getErrPass() {
        return errPass;
    }

    public void setErrPass(String errPass) {
        this.errPass = errPass;
    }

    public String getErrConfirm() {
        return errConfirm;
    }

    public void setErrConfirm(String errConfirm) {
        this.errConfirm = errConfirm;
    }

    public String getErrFullName() {
        return errFullName;
    }

    public void setErrFullName(String errFullName) {
        this.errFullName = errFullName;
    }

    public String getErrEmail() {
        return errEmail;
    }

    public void setErrEmail(String errEmail) {
        this.errEmail = errEmail;
    }
    
    
}
