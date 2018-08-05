package com.hire.service;

public class PasswordGenerator {
	
	public String makepassword(int length) {
		String password = "";
		for (int i = 0; i < length - 2; i++) {
			password = password + randomCharacter("abcdefghijklmnopqrstuvwxyz");
		}
		String randomDigit = randomCharacter("0123456789");
		password = insertAtRandom(password, randomDigit);
		String randomSymbol = randomCharacter("+-_*/?!$%");
		password = insertAtRandom(password, randomSymbol);
		return password;
	}

	public static String randomCharacter(String characters) {
		int n = characters.length();
		int r = (int) (n * Math.random());
		return characters.substring(r, r + 1);
	}

	public static String insertAtRandom(String str, String toInsert) {

		int n = str.length();
		int r = (int) ((n + 1) * Math.random());
		return str.substring(0, r) + toInsert + str.substring(r);
	}
}