<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%  String url ="http://www.jjanggame.co.kr/list.php?gtype=old";
	String line="";

	try{
		Document doc;
		doc = Jsoup.connect(url).get();
		Elements media1=doc.select("table > td[class=thumbnail_t]");
//		Elements media1=doc.select("td[class=thumbnail_t]");
	//	Elements media2=doc.select("table > td[class=thumbnail_t]");
// 		Elements media3=doc.select("script");
// 		Elements media4=doc.select("link");
		for(Element src : media1){
			String templine = src.toString();
			line+=templine;
		}
// 		for(Element src : media2){
// 			String templine = src.toString();
// 			line+=templine;
// 		}
// 		for(Element src : media3){
// 			String templine = src.toString();
// 			line+=templine;
// 		}
// 		for(Element src : media4){
// 			String templine = src.toString();
// 			line+=templine;
// 		}
	}catch(IOException e){
		e.printStackTrace();
	}
%>
</head>
<body>
<%=line %>
</body>

</html>