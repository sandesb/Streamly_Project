package Service;
import DBController.DBconnection;
import Model.login;
import Model.media;
import Model.signup;
import Model.video;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kedar on 3/30/2021.
 */
public class ServicesLogin {

    public login getUser(String username, String password) {

        login user = null;
        String query = "select * from signup where email=? and password=?";

        PreparedStatement pstm = new DBconnection().getStatement(query);

        try {
            pstm.setString(1, username);
            pstm.setString(2, password);
            System.out.println(pstm);

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                user = new login();
                user.setUid(rs.getInt("uid"));
                user.setFullname(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                System.out.println(user.getFullname() + " " + user.getPassword());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
    /**
     * 
     * @return 
     */
    public List<signup> getUserList() {
        List<signup> userList = new ArrayList<>();
        String query = "select * from signup";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                signup user = new signup();
                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
    
        public List<media> getMediaList() {
        List<media> userList = new ArrayList<>();
        String query = "select * from media";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        
        public List<media> getWatchList() {
        List<media> userList = new ArrayList<>();
        String query = "select * from media limit 4";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
                public List<media> getSeriesList() {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where genre='Series' limit 4";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        
        
        public List<media> getSaveList(int uid) {
        List<media> userList = new ArrayList<>();
        String query = "SELECT * from save LEFT JOIN login on save.pid = login.uid LEFT JOIN media on save.mid = media.mid where login.uid=?";
        
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setInt(1, uid);
            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }





        public List<media> getAvatarList() {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where mid=19";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getNewListList() {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where mid=?";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
             public List<media> getMulanList() {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where mid=44";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
                  public List<media> getAvList() {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where mid=44";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getILMList(String cat) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            
            pstm.setString(1, cat);
            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getNewList(int mid, media med) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where mid=?";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
             
                pstm.setInt(1, mid);
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getWednesdayList(String ani) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            
            pstm.setString(1, ani);
            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getDocuList(String doc)   
        {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            
            pstm.setString(1, doc);
            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }public List<media> getDramaList(String dra) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            
            pstm.setString(1, dra);
            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getActionList(String action) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            
            pstm.setString(1, action);
            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getAnimeList(String animation) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            
            pstm.setString(1, animation);
            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getRomanceList(String romance) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            
            pstm.setString(1, romance);
            
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getComedyList(String comedy) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, comedy);

            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getAdventureList(String adventure) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, adventure);

            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getAutoBiographyList(String auto) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, auto);

            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getCrimeList(String crime) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, crime);

            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getFantasyList(String fantasy) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, fantasy);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getFamilyList(String family) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, family);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getHorrorList(String horror) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, horror);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getSciFiList(String sciFi) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, sciFi);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getMindList(String mind) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, mind);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getSteamyList(String steamy) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, steamy);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
        public List<media> getNewReleasesList(String newreleases) {
        List<media> userList = new ArrayList<>();
        String query = "select * from media where category=? limit 2";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, newreleases);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                media med = new media();
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                System.out.println("name");
                userList.add(med);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

        
        public void insertUser(login login) {
        String query = "insert into login (fullname,email,password)" +
                "values(?,?,?)";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, login.getFullname());
            pstm.setString(2, login.getEmail());

            pstm.setString(3, login.getPassword());
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
      public void insertUser(signup signup) {
        String query = "insert into login (fullname,email,password)" +
                "values(?,?,?)";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, signup.getFullname()); /*getter setter ko constructor*/
            pstm.setString(2, signup.getEmail());
            pstm.setString(3, signup.getPassword());
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//      video try
       public void insertUser(video video) {
        String query = "insert into movie (movie_desc,thumbnail,video)" +
                "values(?,?,?)";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, video.getMovie_desc());
            pstm.setString(2, video.getThumbnail()); /*getter setter ko constructor*/
            pstm.setString(3, video.getVideo()); /*getter setter ko constructor*/
/*getter setter ko constructor*/
           
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
       
//       //      video try
//       public void insertContent(media media) {
//        String query = "insert into medent (name,medent.desc,categ,genre,thumb,video)" +
//                "values(?,?,?,?,?,?)";
//        PreparedStatement pstm = new DBconnection().getStatement(query);
//        try {
//            pstm.setString(1, media.getName());
//            pstm.setString(2, media.getDesc()); /*getter setter ko constructor*/
//            pstm.setString(3, media.getCateg());
//            pstm.setString(4, media.getGenre());
//            pstm.setString(5, medent.getThumb());
//            pstm.setString(6, medent.getVideo());
//           
//            System.out.println(pstm);
//            pstm.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
        //      new media try
       public void insertMedia(media media) {
        String query = "insert into media (name,des,genre,category,year,thumb,video)" +
                "values(?,?,?,?,?,?,?)";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, media.getName());
            pstm.setString(2, media.getDes()); /*getter setter ko constructor*/
            pstm.setString(3, media.getGenre());
            pstm.setString(4, media.getCateg());
            pstm.setString(5, media.getYear());
            pstm.setString(6, media.getThumb());
            pstm.setString(7, media.getVideo());
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
       public void insertSave(int uid, int mid) {
        String query = "insert into save (pid,mid)" +
                "values(?,?)";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setInt(1,uid); /*getter setter ko constructor*/
            pstm.setInt(2,mid); /*getter setter ko constructor*/
            
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
         //      get category try
//       public List<medent> viewCateg(String category) {
//           List<medent> userList = new ArrayList<>();
//        String query = "SELECT * FROM `medent` WHERE medent.categ='"+category+"')";
//        PreparedStatement pstm = new DBconnection().getStatement(query);
//        try {
//            
//            
//            System.out.println(pstm);
//            ResultSet rs = pstm.executeQuery();
//            while (rs.next()){
//              medent med = new medent();
//                med.setContent_id(rs.getInt("id"));
//                med.setName(rs.getString("fullname"));
//                med.setDesc(rs.getString("email"));
//                med.setCateg(rs.getString("categ"));
//                med.setGenre(rs.getString("genre"));
//                med.setThumb(rs.getString("thumb"));
//                med.setVideo(rs.getString("video"));
//                userList.add(med);  
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return userList;
//    }
      public void editUser(String id, signup editUser) {
//                   even though the variable is id, in query email is from the cookie, so its written
        String query = "update login set fullname=?, password=? where email='" + id+"';"; 
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, editUser.getFullname()); /*getter setter ko constructor*/
            pstm.setString(2, editUser.getPassword());
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
