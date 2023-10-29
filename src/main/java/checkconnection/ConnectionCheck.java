package checkconnection;

import java.sql.Connection;
import java.sql.SQLException;

import com.DB.DB_Connection;

public class ConnectionCheck {

	public static void main(String[] args) {
		Connection ck = null;
		ck = DB_Connection.getConnection();
		System.out.println(ck);
		if(ck!=null) {
			System.out.println("yes");
		}
		else {
			System.out.println("no");
		}
	}
}
