package com.javaBeansUtils;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashClass {
	
	public static byte[] getSHA(String input) throws NoSuchAlgorithmException 
    {  
        // Static getInstance method is called with hashing SHA  
        MessageDigest md = MessageDigest.getInstance("SHA-256");  
  
        // digest() method called  
        // to calculate message digest of an input  
        // and return array of byte 
        return md.digest(input.getBytes(StandardCharsets.UTF_8));  
    } 
    
    public static String toHexString(byte[] hash) 
    { 
        // Convert byte array into signum representation  
        BigInteger number = new BigInteger(1, hash);  
  
        // Convert message digest into hex value  
        StringBuilder hexString = new StringBuilder(number.toString(16));  
  
        // Pad with leading zeros 
        while (hexString.length() < 32)  
        {  
            hexString.insert(0, '0');  
        }  
  
        return hexString.toString();  
    } 
    
    /**
     * La fonction a utiliser pour le hash
     * @param pwd
     * @param smthMore
     * @param nRepeat
     * @return
     * @throws NoSuchAlgorithmException
     */
    public static String hashIt(String pwd, String smthMore, int nRepeat) throws NoSuchAlgorithmException {
    	String result = HashClass.toHexString(HashClass.getSHA(pwd+smthMore));
    	for(int i=0;i<nRepeat;i++) {
    		result = HashClass.toHexString(HashClass.getSHA(result+i));
    	}
    	return result;
    }

}