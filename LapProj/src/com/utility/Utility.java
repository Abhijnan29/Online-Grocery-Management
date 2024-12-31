package com.utility;


import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Utility {
	
	public static java.sql.Date convertStringToSQLDate(String strDate)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try
		{
			java.util.Date javaDate = sdf.parse(strDate);
			java.sql.Date sqlDate = new java.sql.Date(javaDate.getTime());
			return sqlDate;
		} 
		catch (ParseException e) 
		{
			e.printStackTrace();
		}
		return null;
	}

}
