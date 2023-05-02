package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.PersonDto;

public class PersonDao {
	
	private static PersonDao instance = new PersonDao(); //싱글톤 패턴으로 만들어준다.
	
	private PersonDao() { //외부에서 생성 못하도록 한다.
	}
	
	//PersonDao객체를 생성해서 리턴해주는 정적메서드(싱글톤 패턴)
	public static PersonDao getInstance() {
		return instance;
	}
	
	//DB접속 코드
	private Connection getConnection() throws Exception {
		Context context = new InitialContext();
		DataSource dataSource = (DataSource)context.lookup("java:comp/env/" + "jdbc/dbconn");
		Connection conn = dataSource.getConnection();
		System.out.println("DBCP연동완료");
		
		return conn;
	}
	
	//회원 리스트를 DB에서 가져오는 메서드
	public ArrayList<PersonDto> personsAll() {
		ArrayList<PersonDto> dtos = new ArrayList<>();
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet resultSet = null;
		String sql = "select * from person";
		
		try {
			connection = this.getConnection();
			pstmt = connection.prepareStatement(sql);
			resultSet = pstmt.executeQuery();
			
			System.out.println("personAll()");
			
			while(resultSet.next()) {
				PersonDto dto = new PersonDto();
				dto.setId(resultSet.getString("id"));
				dto.setPw(resultSet.getString("pw"));
				dto.setName(resultSet.getString("name"));
				dto.seteMail(resultSet.getString("eMail"));
				dto.setAddress(resultSet.getString("address"));
				//루프를 돌면서 생성된 PersonDto객체를 ArrayList에 추가를 하고 있다.
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				resultSet.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dtos;
	}
}
