/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

public class fav {

    private String fav;

    public fav(String fav) {
        
        this.fav = fav;
    }



    public fav() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

  public String getFav() {
        return fav;
    }

    public void setFav(String fav) {
        this.fav = fav;
    }
}