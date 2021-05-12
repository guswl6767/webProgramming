package kr.ac.mlec.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.ac.mlec.board.vo.BoardVO;
import kr.ac.mlec.login.vo.LoginVO;
import kr.ac.mlec.util.ConnectionFactory;
import kr.ac.mlec.util.JDBCClose;

public class LoginDAO {
	
	 /**
	  * 
	  * 
	  * 로그인을 위해 클라이언트가 입력한 id, password를 가지는 loginvo를 이용하여 t_member테이블의 해당 회원의 존재여부 판단
	  * id, password가 일치하는 회원이 존재하면 해당회원의 정보(레코드)를반환
	  * @param loginVO
	  * @return
	  */

	 public LoginVO login(LoginVO loginVO) {
		 
		    Connection 			conn = null;
			PreparedStatement 	pstmt = null;
			LoginVO userVO = null; //return 하기위해서 만듦
			
			try {
				conn = new ConnectionFactory().getConnection();
				StringBuilder sql = new StringBuilder();
				sql.append("select id, name, type ");
				sql.append(" from t_member ");
				sql.append(" where id =? and password = ? "); //id password 일치하는지 보기
				
				pstmt = conn.prepareStatement(sql.toString()); 
				pstmt.setString(1, loginVO.getId()); // loginvo에 날아온 id에 ?값을 넣어주는 것
				pstmt.setString(2, loginVO.getPassword()); //loginvo에 날아온 password에 ?값을 넣어주는 것
				
				
				ResultSet rs = pstmt.executeQuery(); //실행하는 부분
				
				//re넥스트가 있는 것이 성공이니까 if문 써서 가져오기
				if(rs.next()) {
					String id =rs.getString("id");
					String name =rs.getString("name");
					String type = rs.getString("type");
					
					userVO = new LoginVO(); //uservo가 리턴하기위해서는 id,name,type 객체를 가진 인스턴스객체가필요함
					userVO.setId(id);
					userVO.setName(name);
					userVO.setType(type);
				}
					
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				JDBCClose.close(conn, pstmt);
			}
			return userVO;
	 }
	 
	 
}
