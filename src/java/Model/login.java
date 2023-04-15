/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
public class login {

    private int uid;
    private String fullname;
    private String email;
    private String password;
    private savelist savelist;

    public savelist getSavelist() {
        return savelist;
    }

    public void setSavelist(savelist savelist) {
        this.savelist = savelist;
    }
    

    public login() {
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public login(int uid, String fullname, String email, String password) {
        this.uid = uid;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
