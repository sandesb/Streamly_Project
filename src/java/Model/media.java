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
public class media {
    private int mid;  
    private String name;
    private String des;
    private String genre;
    private String categ;
    private String year;
    private String thumb;
    private String video;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getCateg() {
        return categ;
    }

    public void setCateg(String categ) {
        this.categ = categ;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getThumb() {
        return thumb;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public media(int mid, String name, String des, String genre, String categ, String year, String thumb, String video) {
        this.mid = mid;
        this.name = name;
        this.des = des;
        this.genre = genre;
        this.categ = categ;
        this.year = year;
        this.thumb = thumb;
        this.video = video;
    }

    public media(String name, String des, String genre, String categ, String year, String thumb, String video) {
        this.name = name;
        this.des = des;
        this.genre = genre;
        this.categ = categ;
        this.year = year;
        this.thumb = thumb;
        this.video = video;
    }
    
    
    
    public media() {
       }
}
