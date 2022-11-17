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

public UserRegBean(){//��ʼ����ֵ����ֹ����null����

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

		this.errors.put("errname","�û�������,����Ϊ2~10λ�����ֻ���ĸ!");

}
	if(!this.password.matches("\\w{6,10}")){ 

		flag=false;

		this.password="";

		this.errors.put("errpassword","�������,���ȱ���Ϊ6-10λ!");
}
	if(!this.password1.matches(password)){ 

		flag=false;

		this.password1="";

		this.errors.put("errpassword1","�������벻ͬ��");
}
	if(!this.phone.matches("0\\d{2,3}[-]?\\d{7,8}|0\\d{2,3}\\s?\\d{7,8}|13[0-9]\\d{8}|15[1089]\\d{8}")){ 

		flag=false;

		this.phone="";

		this.errors.put("errphone","�绰��ʽ����!����������");

	}
//	if(!this.age.matches("\\d+")){ 
//
//		flag=false;
//
//		this.age="";
//
//		this.errors.put("errage","�������.");
//
//}

	if(!this.email.matches("\\w+@\\w+.\\w+\\.?\\w*")){

		flag=false;

		this.email="";

		this.errors.put("erremail","�������,��ȷ����д��ʽ�Ƿ���ȷ.");

}

	return flag; //���ر��

}

public String getErrorMsg(String key){

	String value=this.errors.get(key);

return value==null?"":value; //�ж�value��ֵ�Ƿ�Ϊnull���������ȡ��ֵ����������ȡԭֵ

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