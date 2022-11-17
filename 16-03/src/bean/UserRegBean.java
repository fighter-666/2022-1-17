package bean;

import java.util.HashMap;

import java.util.Map;

public class UserRegBean{

	private String name;

//	private String age;

	private String email;

	private String password;

	private String password1;

	private String phone;

	private String address;
	
	private String sex;
	
	private String year;
	
	private String month;

	private Map<String,String> errors=null;

public UserRegBean(){//初始化空值，防止出现null错误

	this.name=""; 

//	this.age=""; 

	this.email=""; 

	this.password="";

	this.password1="";

	this.phone="";

	this.address="";

	this.errors=new HashMap<String,String>();

}

public boolean isValidate(){

	boolean flag=true;

	if(!this.name.matches("\\w{2,10}")){ 

		flag=false;

		this.name="";

		this.errors.put("errname","用户名错误,必须为2~10位的数字或字母!");

}
	if(!this.password.matches("\\w{6,10}")){ 

		flag=false;

		this.password="";

		this.errors.put("errpassword","密码错误,长度必须为6-10位!");
}
	if(!this.password1.matches(password)){ 

		flag=false;

		this.password1="";

		this.errors.put("errpassword1","两次密码不同！");
}
	if(!this.phone.matches("0\\d{2,3}[-]?\\d{7,8}|0\\d{2,3}\\s?\\d{7,8}|13[0-9]\\d{8}|15[1089]\\d{8}")){ 

		flag=false;

		this.phone="";

		this.errors.put("errphone","电话格式错误!请重新输入");

	}
//	if(!this.age.matches("\\d+")){ 
//
//		flag=false;
//
//		this.age="";
//
//		this.errors.put("errage","年龄错误.");
//
//}

	if(!this.email.matches("\\w+@\\w+.\\w+\\.?\\w*")){

		flag=false;

		this.email="";

		this.errors.put("erremail","邮箱错误,请确认书写格式是否正确.");

}

	return flag; //返回标记

}

public String getErrorMsg(String key){

	String value=this.errors.get(key);

return value==null?"":value; //判断value的值是否为null，如果是则取空值””，否则取原值

}

public void setName(String name){

this.name=name;

}

//public void setAge(String age){
//
//this.age=age;
//
//}

public void setEmail(String email){

this.email=email;

}

public String getYear() {
	return year;
}

public void setYear(String year) {
	this.year = year;
}

public String getMonth() {
	return month;
}

public void setMonth(String month) {
	this.month = month;
}

public String getSex() {
	return sex;
}

public void setSex(String sex) {
	this.sex = sex;
}

public String getName(){

return this.name;

}

//public String getAge(){
//
//return this.age;
//
//}

public String getEmail(){

return this.email;

}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getPassword1() {
	return password1;
}

public void setPassword1(String password1) {
	this.password1 = password1;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

}