package Service;
import DBController.DBconnection;
import Model.login;
import Model.media;
import Model.signup;
import Model.video;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by kedar on 3/30/2021.
 */
public class ServicesUser {

    public login getUser(String username, String password) {

        login user = null;
        String query = "select * from login where email=? and password=?";

        PreparedStatement pstm = new DBconnection().getStatement(query);

        try {
            pstm.setString(1, username);
            pstm.setString(2, password);
            System.out.println(pstm);

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                
                user = new login();
                user.setUid(rs.getInt("uid"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                System.out.println(user.getFullname() + " " + user.getPassword() + " " + user.getUid());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
    
    public login getUserId(String username) {

        login user = null;
        String query = "select * from login where email=?";

        PreparedStatement pstm = new DBconnection().getStatement(query);

        try {
            pstm.setString(1, username);
            System.out.println(pstm);

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                
                user = new login();
                user.setUid(rs.getInt("uid"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                System.out.println(user.getFullname() + " " + user.getPassword() + " " + user.getUid());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
    public void updatePassword(int id, String password) {
        String query = "update login set password=? where uid=?";
                PreparedStatement pstm = new DBconnection().getStatement(query);

        try {
        pstm.setString(1, password);
        pstm.setInt(2, id);

        pstm.execute();
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

//      public login GetUser(String identifier){
//        login user = null;
//        String query = "select * from login where name=? or email=?";
//        PreparedStatement pstm = new DBconnection().getStatement(query);
//
//        try {
//            
//            
//            pstm.setString(1, identifier);
//            pstm.setString(2, identifier);
//            ResultSet rs = pstm.executeQuery();
//
//            while (rs.next()) {
//                
//                user = new login();
//                user.setUid(rs.getInt("uid"));
//                user.setFullname(rs.getString("fullname"));
//                user.setEmail(rs.getString("email"));
//                user.setPassword(rs.getString("password"));
//                System.out.println(user.getFullname() + " " + user.getPassword() + " " + user.getUid());
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return user;
//    }
    public void logout(HttpServletRequest request, HttpServletResponse response){
            try{
            HttpSession session = request.getSession();
            session.invalidate();
            } 
            catch(Exception e){
            e.printStackTrace();
            }
    }     
    /**
     * 
     * @return 
     */
    public List<login> getUserList() {
        List<login> userList = new ArrayList<>();
        String query = "select * from login";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                login login = new login();
                login.setUid(rs.getInt("uid"));
                login.setFullname(rs.getString("fullname"));
                login.setEmail(rs.getString("email"));
                userList.add(login);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
      public login getUserRow(int id){
        login user = new login();
        String query = "select * from login where uid=?";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setInt(1,id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                user.setUid(rs.getInt("uid"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return user;
    }
      public media getMediaRow(int mid){
        media med = new media();
        String query = "select * from media where mid=?";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setInt(1,mid);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                med.setMid(rs.getInt("mid"));
                med.setName(rs.getString("name"));
                med.setDes(rs.getString("des"));
                med.setGenre(rs.getString("genre"));
                med.setCateg(rs.getString("category"));
                med.setYear(rs.getString("year"));
                med.setThumb(rs.getString("thumb"));
                med.setVideo(rs.getString("video"));
                
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return med;
    }
    
//        public List<content> getContentList() {
//        List<content> userList = new ArrayList<>();
//        String query = "select * from content";
//        System.out.println(query);
//        PreparedStatement pstm = new DBconnection().getStatement(query);
//        try {
//            ResultSet rs = pstm.executeQuery();
//            while (rs.next()) {
//                content cont = new content();
//                cont.setContent_id(rs.getInt("id"));
//                cont.setName(rs.getString("fullname"));
//                cont.setDesc(rs.getString("email"));
//                cont.setCateg(rs.getString("categ"));
//                cont.setGenre(rs.getString("genre"));
//                cont.setThumb(rs.getString("thumb"));
//                cont.setVideo(rs.getString("video"));
//                userList.add(cont);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return userList;
//    }
        
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
//       public void insertContent(content content) {
//        String query = "insert into content (name,content.desc,categ,genre,thumb,video)" +
//                "values(?,?,?,?,?,?)";
//        PreparedStatement pstm = new DBconnection().getStatement(query);
//        try {
//            pstm.setString(1, content.getName());
//            pstm.setString(2, content.getDesc()); /*getter setter ko constructor*/
//            pstm.setString(3, content.getCateg());
//            pstm.setString(4, content.getGenre());
//            pstm.setString(5, content.getThumb());
//            pstm.setString(6, content.getVideo());
//           
//            System.out.println(pstm);
//            pstm.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//         //      get category try
//       public List<content> viewCateg(String category) {
//           List<content> userList = new ArrayList<>();
//        String query = "SELECT * FROM `content` WHERE content.categ='"+category+"')";
//        PreparedStatement pstm = new DBconnection().getStatement(query);
//        try {
//            
//            
//            System.out.println(pstm);
//            ResultSet rs = pstm.executeQuery();
//            while (rs.next()){
//              content cont = new content();
//                cont.setContent_id(rs.getInt("id"));
//                cont.setName(rs.getString("fullname"));
//                cont.setDesc(rs.getString("email"));
//                cont.setCateg(rs.getString("categ"));
//                cont.setGenre(rs.getString("genre"));
//                cont.setThumb(rs.getString("thumb"));
//                cont.setVideo(rs.getString("video"));
//                userList.add(cont);  
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return userList;
//    }
        public void editUser(String edit, media med) {
//                   even though the variable is id, in query email is from the cookie, so its written
        String query = "update media set name=?, des=?, genre=?, category=?, year=?, thumb=?, video=? where mid=?"; 
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, med.getName()); /*getter setter ko constructor*/
            pstm.setString(2, med.getDes());
            pstm.setString(3, med.getGenre());
            pstm.setString(4, med.getCateg());
            pstm.setString(5, med.getYear());
            pstm.setString(6, med.getThumb());
            pstm.setString(7, med.getVideo());
            
            pstm.setString(8, edit);  
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
          public void deleteUser(int id) {
             
        String query = "delete from media where mid=?";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setInt(1, id);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
          public void deleteSave(int mid, int uid) {
        String query = "delete  from save where mid = ? AND pid = ?";
        
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setInt(1, mid);
                        pstm.setInt(2, uid);

            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
         public void editProfile(login login) {
//                   even though the variable is id, in query email is from the cookie, so its written
        String query = "update login set fullname=? where uid=?"; 
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, login.getFullname());
            pstm.setInt(2, login.getUid()); /*getter setter ko constructor*/

            
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//      public void editContent(String id, signup editUser) {
//          media med = new media();
//          
//            med.setName(request.getParameter("name"));
//            med.setDes()(request.getParameter("email"));
//            new UserServices().insertUser(sign);
////                   even though the variable is id, in query email is from the cookie, so its written
//        String query = "update signup set fullname=?, password=? where email='" + id+"';"; 
//        PreparedStatement pstm = new DBconnection().getStatement(query);
//        try {
//            pstm.setString(1, editUser.getFullname()); /*getter setter ko constructor*/
//            pstm.setString(2, editUser.getPassword());
//            System.out.println(pstm);
//            pstm.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
}
