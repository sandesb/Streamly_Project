

package Service;
import DBController.DBconnection;
import Model.fav;
import Model.media;
import Model.video;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kedar on 3/30/2021.
 */
public class FavServices {


     public void insertFav(fav fav) {
        String query = "insert into fav(fname)" +
                "values(?)";
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            pstm.setString(1, fav.getFav());
          
            System.out.println(pstm);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

        public List<video> getVideoList() {
        List<video> userList = new ArrayList<>();
        String query = "select * from video where movie_id=1";
        System.out.println(query);
        PreparedStatement pstm = new DBconnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                video vid = new video();
                vid.setMovie_id(rs.getInt("movie_id"));
                vid.setMovie_desc(rs.getString("movie_desc"));
                vid.setThumbnail(rs.getString("thumbnail"));
                vid.setVideo(rs.getString("video"));
                
                userList.add(vid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
}
