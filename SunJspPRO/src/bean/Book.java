package bean;

public class Book {
 private String bookid;
 private String bookname;
 private String author;
 private Double price;
 private String querycontent;//模糊查询内容
 private StringBuffer queryresult;//查询结果
public String getBookid() {
	return bookid;
}
public void setBookid(String bookid) {
	this.bookid = bookid;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
public StringBuffer getQueryresult() {
	queryresult=new  StringBuffer();
	String sql="select * from tb_book where 书名 like '%"+querycontent+"%'" ;
	bookCX boo=new bookCX();
	return boo.getAll(sql,"tb_book") ;
}
public void setQueryresult(StringBuffer queryresult) {
	this.queryresult = queryresult;
}
public String getQuerycontent() {
	return querycontent;
}
public void setQuerycontent(String querycontent) {
	this.querycontent = querycontent;
}
 
}
