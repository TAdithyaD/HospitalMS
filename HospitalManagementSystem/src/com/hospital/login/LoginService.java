package com.hospital.login;

public class LoginService
{
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("hope") && password.equals("hope");
	}
}
