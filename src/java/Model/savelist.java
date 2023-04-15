/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author home
 */
public class savelist {
  private int sid;
  private media media;

    public savelist(int sid, media media) {
        this.sid = sid;
        this.media = media;
    }
    public savelist() {
       
    }
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public media getMedia() {
        return media;
    }

    public void setMedia(media media) {
        this.media = media;
    }
  
  
  
}
