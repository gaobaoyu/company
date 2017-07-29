package cn.util;

import java.util.UUID;

public class UploadUtils {
	public static String subFileName(String fileName){
		int index = fileName.lastIndexOf("\\");
		if(index == 1){
			return fileName;
		}
		return fileName.substring(index+1);
	}
	
	public static String generateRandonFileName(String fileName){
		String ext = fileName.substring(fileName.lastIndexOf("."));
		return UUID.randomUUID().toString()+ext;
	}
	
	public static String generateRandomDir(String uuidFileName){
		int hashcode = uuidFileName.hashCode();
		int d1 = hashcode & 0xf;
		int d2 = (hashcode>>4)& 0xf;
		return "/"+d1+"/"+d2;
	}
}
