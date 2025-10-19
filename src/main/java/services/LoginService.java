package services;

import daos.UserDao;
import dtos.LoginDto;
import dtos.UserDto;


public class LoginService {
	
	public UserDto authenticate(LoginDto dto) {
		if(!is_valid(dto)) {
			return null;
		}
		return new UserDao().checkUsernamePasswordExist(dto);
	}
	

	private boolean is_valid(LoginDto dto) {
		return isNotBlankOrNull(dto.getUsername()) && isNotBlankOrNull(dto.getPassword());
	}

	private boolean isNotBlankOrNull(String field) {
		return field != null && !field.isEmpty();
	}

}
