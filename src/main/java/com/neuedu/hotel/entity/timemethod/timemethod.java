package com.neuedu.hotel.entity.timemethod;

import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class timemethod {

	public static long timeToLong(String dataStr) {
	    
		String dateStr1=dataStr;
		long longDate = Long.valueOf(dateStr1.replaceAll("[-\\s:]",""));         
		return longDate;
		
	}
	
	
	public static Boolean timeBigger1(String a,String b) {
		
		long aa = timeToLong(a);
		long bb = timeToLong(b);
		
		if(aa>=bb) return true;
		return false;
		
	}
	
	public static Boolean timeBigger2(String a,String b) {
		
			long aa = timeToLong(a);
			long bb = timeToLong(b);
			if(aa>bb) return true;
			return false;
		
	}
	
	public static String renewTime(String a) {
		String endDate = a;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date sDate;
		try {
			sDate = sdf.parse(endDate);
			Format f = new SimpleDateFormat("yyyy-MM-dd");
		       
		       
	        Calendar c = Calendar.getInstance();  
	        c.setTime(sDate);  
	        c.add(Calendar.DAY_OF_MONTH, 1);           
	        
	        sDate = c.getTime();

	        
	        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	        endDate = sdf1.format(sDate);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		
		return endDate;
		
	}
	
}
