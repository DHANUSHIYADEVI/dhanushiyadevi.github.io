<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.FileSystems"%>
<%@page import="com.github.javafaker.Faker" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.File,java.io.BufferedReader,java.io.FileReader,java.util.HashMap,java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Population Tool</title>
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<% out.println(System.getProperty("user.dir")); 
Faker f = new Faker();
out.println(f.lorem().paragraph());%>
<div class="form">
  <h1> Data Population Tool</h1>
  <form method="POST" action="Populate">
   <table>
   <tr> <td> orgId </td>  <td> : </td> <td><input name="orgId" type="text"/> </td> </tr>
   <tr> <td> iamURL </td>  <td> : </td> <td><input name="iamurl" type="text"/> </td> </tr>
   <tr> <td> EmailAddress </td> <td> : </td> <td> <input name="emailId" type="text"/> </td> </tr>
   <tr> <td> OAuth Token </td> <td> : </td> <td><input name="oauthtoken" type="text"/> </td> </tr>
   <tr> <td> clientId </td>  <td> : </td> <td> <input name="clientid" type="text"/> </td> </tr>
   <tr> <td> clientSecret </td> <td> : </td> <td><input name="clientsecret" type="text"/> </td> </tr>
   <tr> <td> DeskURL </td> <td> : </td> <td> <input name="deskurl" type="text"/> </td> </tr>
   <tr> <td> Module </td> <td> : </td>
   <td>  <select name="module">
      <option value="Tickets"> Tickets </option>
      <option value="Contacts"> Contacts </option>
      <option value="Accounts"> Accounts </option>
      <option value="Agents"> Agents </option>
      <option value="Departments">Departments </option>
      <option value="Tasks"> Tasks </option>
      <option value="Events"> Events </option>
      <option value="TimeTracking"> TimeTracking </option>
      <option value="Products"> Products </option>
      <option value="Calls"> Calls </option>
      <option value="Fields"> Fields(PicList) </option>
    </select> </td> </tr>
   <tr> <td colspan="3"> <input type="submit" value="populate"/> </td> </tr>
   </table>
  </form>
</div>
</body>
</html>