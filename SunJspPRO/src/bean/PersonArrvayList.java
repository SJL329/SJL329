 package bean;

import java.util.ArrayList;

public class PersonArrvayList {
	
   public static ArrayList<Person> PersonArray=null; 
   public PersonArrvayList(){
	   if(PersonArray==null){
		   PersonArray=new ArrayList<Person>();
		   Person p=new Person();
		   p.setName("admin");
		   p.setPassword("admin");
		   PersonArray.add(p);
		   p=new Person();
		   p.setName("sss");
		   p.setPassword("sss");
		   PersonArray.add(p);
		   p=new Person();
		   p.setName("student");
		   p.setPassword("123");
		   PersonArray.add(p);
		 }
   }
   
public ArrayList<Person> getPersonArray() {
	return PersonArray;
}
public void setPersonArray(ArrayList<Person> personArray) {
	PersonArray = personArray;
}
//判断用户名和密码是否存在
public String isPerson(String n,String p){
	String m="error";
	    for(int i=0;i<PersonArray.size();i++){
	      Person p1=PersonArray.get(i);
	      if(n.equals(p1.getName())&&p.equals(p1.getPassword())){
	         m="ok";
	      }
	    } 
	return m;	
}//注册

public String Register(String n,String p,String a,String b,String c,String d,String e,String f,String g,String h){
	String flag="failure";
	String xx=isPerson(n,p);
	if(xx.equals("ok")){
		 flag="failure";
	}
	else {
		Person per=new Person();//创建 Person对象
		per.setName(n);
		per.setPassword(p);
		per.setS1(a);
		per.setS2(b);
		per.setS3(c);
		per.setS4(d);
		per.setS5(e);
		per.setS6(f);
		per.setS7(g);
		per.setS8(h);
		ArrayList<Person> pa= new ArrayList<Person>();//创建列表
		pa.add(per);
		setPersonArray(pa);
		flag="successful";	
	}
	return  flag;
}//取值
public Person getInforName(String n,String p ){
	Person person=new Person();
	for(int i=0;i<PersonArray.size();i++){
		Person per=PersonArray.get(i);
		if(n.equals(per.getName())&&p.equals(per.getPassword())){
			person.setName(per.getName());
			person.setPassword(per.getPassword());
			person.setS1(per.getS1());
			person.setS2(per.getS2());
			person.setS3(per.getS4());
			person.setS4(per.getS4());
			person.setS5(per.getS5());
			person.setS6(per.getS6());
			person.setS7(per.getS7());
			person.setS8(per.getS8());
		}
		
	}
	return person;
	}


}