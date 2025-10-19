package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dtos.LoginDto;
import dtos.UserDto;
import utils.ConnectionUtil;

public class UserDao {
	private Connection connection;

	public UserDao() {
		this.connection = ConnectionUtil.getConnection();
	}

	public UserDto checkUsernamePasswordExist(LoginDto dto) {
		UserDto userDto = null;
		String sql = "select * from users where username=? and password=?";

		try {

			PreparedStatement stm = connection.prepareStatement(sql);
			stm.setString(1, dto.getUsername());
			stm.setString(2, dto.getPassword());

			ResultSet result = stm.executeQuery();

			if (result.next()) {
				userDto = new UserDto();
				userDto.setId(result.getLong(1));
				userDto.setUsername(result.getString(2));
			}

		} catch (Exception e) {
			System.err.println("Erro at UserDao.java");
			e.printStackTrace();
		}
		return userDto;
	}

}
