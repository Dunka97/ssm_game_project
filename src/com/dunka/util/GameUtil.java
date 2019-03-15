package com.dunka.util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * 
 * @author Dunka
 * @Time   2019年3月15日
 * @Todo   工具类
 */
public class GameUtil {
	
	//日期格式的转换MM/dd/yyyy  to yyyy-MM-dd
	public static String dateCovert(String date) throws ParseException {
		
		if(date.contains("/")) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
			java.util.Date date2 = dateFormat.parse(date);
			SimpleDateFormat newdateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String newDate = newdateFormat.format(date2);
			return newDate;
		}
		return date;
	}
}
