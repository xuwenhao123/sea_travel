package converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.beanutils.Converter;

public class myconverter implements Converter {

	@Override
	public Object convert(Class clazz, Object value) {
		// TODO Auto-generated method stub
		System.out.println("converter");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = sdf.parse((String) value);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
