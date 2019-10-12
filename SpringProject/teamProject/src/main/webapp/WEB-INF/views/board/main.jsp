<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

    
    
    <!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ONDISK</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

</head>

    <%@ include file ="../include/header.jsp" %>
    <%@ include file ="../include/aside.jsp" %>

   <section id="mainList">
        <div class="container">
            <fieldset class="list">
           <%@ include file ="../board/list.jsp" %>
            </fieldset>
        </div>
    </section>
     <%@ include file ="../include/footer.jsp" %>