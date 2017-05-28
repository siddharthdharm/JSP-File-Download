<%@ page import ="java.io.FileInputStream" %>
<%@ page import ="java.io.IOException" %>
<%@ page import ="java.io.PrintWriter" %>
<%@ page import ="javax.servlet.ServletException" %>
<%@ page import ="javax.servlet.http.HttpServlet" %>
<%@ page import ="javax.servlet.http.HttpServletRequest" %>
<%@ page import ="javax.servlet.http.HttpServletResponse" %>

<%    
  String filename = "castle.jpg";     // FILE NAME WITH EXTENSION//
  String filepath = "E:\\";           // ABSOLUTE FILE PATH //  
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>

<%-- USING INLINE STUFF --%>
<%-- response.setHeader("Content-Disposition","inline; filename=\"" + filename + "\""); --%>