package bean;

public class CodeExchange {
	public static String ChineseCoding(String str){
		if(str==null)  str="";
		try{
			str=new String(str.getBytes("ISO-8859-1"),"utf-8");
		}catch(Exception e){
			str="";
			e.printStackTrace();
		}
		return str;
	}
}
