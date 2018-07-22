<%-- 
    Document   : regsiter
    Created on : 22 Jul, 2018, 6:58:44 PM
    Author     : narottamkrjha
--%>


<%@page import="com.javatpoint.hibernate_maven_webapp.UserDAO"%>
<jsp:useBean id="user_bean" class="com.javatpoint.entity.UserEn"/>
<jsp:setProperty property="*" name="user_bean"/>
<%
    boolean ifRegistered = UserDAO.register(user_bean);
    
    if(ifRegistered)
    System.out.println("You are Registered sucessfully");
    else
    System.out.println("Sorry Registration failed");
    
    %>
