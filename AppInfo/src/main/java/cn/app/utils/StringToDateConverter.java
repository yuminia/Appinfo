package cn.app.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * String向Date转换 的转换器
 * @author Administrator
 *
 */
public class StringToDateConverter implements Converter<String, Date>{
	
	private String pattern;
	
	public StringToDateConverter(){}
	
	public StringToDateConverter(String pattern){
		this.pattern = pattern;
	}

	public Date convert(String strDate) {
		Date date = null;
		try {
			date = new SimpleDateFormat(pattern).parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
}
