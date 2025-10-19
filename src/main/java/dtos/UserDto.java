package dtos;

public class UserDto {

	private Long id;
	private String username;

	public UserDto() {
	}

	public UserDto(Long id, String username) {
		super();
		this.username = username;
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", username=" + username + "]";
	}
	
}
