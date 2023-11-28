package application;

import jakarta.xml.bind.DatatypeConverter;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Hash {
    public static String toSHA1(String input){
        System.out.println("Input for hashing: "+input);
        MessageDigest msdDigest = null;
        String sha1=null;
        try {
            msdDigest = MessageDigest.getInstance("SHA-1");
            msdDigest.update(input.getBytes("UTF-8"), 0, input.length());
            sha1 = DatatypeConverter.printHexBinary(msdDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        System.out.println("Output of hashing: "+sha1);
        return sha1;
    }
    static StringWriter errors = new StringWriter();
	public static String getHash(String input) {
		String hash;
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
			byte[] bytes = messageDigest.digest(input.getBytes());
			BigInteger integer = new BigInteger(1, bytes);
			hash = integer.toString(16);
			while(hash.length() < 32) {
				hash = "0" + hash;
			}
			return hash;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
