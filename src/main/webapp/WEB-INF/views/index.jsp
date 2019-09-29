
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

		 <form action="saveNote" method="POST">
		 <input type="text" name="noteId"><br>
		 <input type="text" name="Title"><br>
		 <input type="text" name="Content"><br>
		 <input type="text" name="Status"><br>
		 <input type="Submit" value="send">
		 </form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
  <table style="width:100%">
  <tr>
   <th>Id</th>
   <th>Title</th>
   <th>Content</th>
   <th>Status</th>
   <th>CreatedDate</th>
   <th>Action</th>
</tr>

<c:forEach var="var" items="${list}">
    <tr>
       <td>${var.noteId}</td>
       <td>${var.noteTitle}</td>
       <td>${var.noteContent}</td>
       <td>${var.noteStatus}</td>
       <td>${var.createdAt}</td>
   </tr>
   </c:forEach>

  </table>
</body>
</html>