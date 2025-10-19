package services;

import dtos.LoginDto;
import dtos.UserDto;


public class LoginService {
	
	public UserDto authenticate(LoginDto dto) {
		
		if( is_valid(dto) && check_credentials(dto)) {
			UserDto userDto = new UserDto();
			 userDto.setUsername(dto.getUsername());
			 userDto.setPassword(dto.getPassword());
			 return userDto;
		}
		
		return null;
	}
	
	private boolean check_credentials(LoginDto dto) {
		return dto.getUsername().equals("admin") && dto.getPassword().equals("pass123");
	}

	private boolean is_valid(LoginDto dto) {
		return isNotBlankOrNull(dto.getUsername()) && isNotBlankOrNull(dto.getPassword());
	}

	private boolean isNotBlankOrNull(String field) {
		return field != null && !field.isEmpty();
	}

}
