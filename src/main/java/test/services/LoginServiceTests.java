package test.services;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import dtos.LoginDto;
import services.LoginService;

class LoginServiceTests {

	@Test
	void testLoginAuthenticate() {
		
		LoginService service = new LoginService();

		assertNull(service.authenticate(new LoginDto(null, null)));
		assertNull(service.authenticate(new LoginDto("", null)));
		assertNull(service.authenticate(new LoginDto(null, "")));
		assertNull(service.authenticate(new LoginDto("", "")));
		
	}

}
