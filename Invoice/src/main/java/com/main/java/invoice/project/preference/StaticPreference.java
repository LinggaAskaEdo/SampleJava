package com.main.java.invoice.project.preference;

public class StaticPreference
{
	private static String URL;
	private static String USERNAME;
	private static String PASSWORD;
	
	public static String getURL() 
	{
		return URL;
	}
	
	public static void setURL(String uRL)
	{
		URL = uRL;
	}
	
	public static String getUSERNAME() 
	{
		return USERNAME;
	}
	
	public static void setUSERNAME(String uSERNAME) 
	{
		USERNAME = uSERNAME;
	}
	
	public static String getPASSWORD() 
	{
		return PASSWORD;
	}
	
	public static void setPASSWORD(String pASSWORD) 
	{
		PASSWORD = pASSWORD;
	}
}