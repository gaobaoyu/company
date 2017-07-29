package cn.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Utils {
	public static String md5(String plainText){
		byte[] bytes = null;
		try {
			bytes =MessageDigest.getInstance("md5").digest(plainText.getBytes());
		} catch (NoSuchAlgorithmException e) {
			 throw new RuntimeException("md5 false");
		}
		String md5code = new BigInteger(1,bytes).toString(16);
		for(int i=0;i<32-md5code.length();++i){
			md5code="0"+md5code;
		}
		return md5code;
		
	}

}
