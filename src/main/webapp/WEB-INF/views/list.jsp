<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>유희왕 카드 도감</title>
  <link rel="stylesheet" href="${path}/resources/css/my.css" type="text/css">

    <script>
        function trueOrFalse(abc){
            var trueFalse = abc;
            if (trueFalse == 0){
                document.write("X") ;

            }
            else {
                document.write("0");
            }
        }

        function delete_ok(id){
            var a = confirm("정말로 삭제하시겠습니까?");
            if(a) location.href='deleteok/' + id;
        }

        function bg_color(abc, def){
            if(abc == 0){
                document.getElementById(def).style.backgroundColor='#FFE5E5';
                document.getElementById(def).style.color='#FFFFFF';

            }
            else {
                document.getElementById(def).style.backgroundColor = '#E8F3DA';
                document.getElementById(def).style.color = '#FFFFFF';
            }
        }


    </script>

</head>
<div>
    <a href="login/logout" style="color: #222222; text-decoration: none">Log Out</a>
</div>

<body>

<div id="header">
  <a id="homeTitle" href="list" style="color: #225699">유희왕 카드 도감</a>
</div>

<div id="input">
    <input type="text">
    <input type="button" value="Search" id="search">
    <input type="button" value="Add" id="add" onclick="location.href = 'add'">
</div>

<div id="tablediv">
    <table class="table">
        <thead>
            <tr>
              <th>등록 번호</th>
              <th>&nbsp;레벨&nbsp;</th>
              <th>&nbsp;이름&nbsp;</th>
              <th>속성</th>
              <th>공격 능력</th>
              <th>방어 능력치</th>
              <th>몬스터 카드 여부</th>
              <th>효과 카드 여부</th>
              <th>삭제&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="u">
            <tr>
              <td id="${u.registerNum}"><a href="editform/${u.registerNum}" style="color: #222222; text-decoration: none">${u.registerNum}</a></td>
              <td>${u.cardLevel}</td>
              <td>${u.cardName}</td>
              <td>${u.cardType}</td>
              <td>${u.cardAtk}</td>
              <td>${u.cardDef}</td>
              <td><script>trueOrFalse(${u.isMonsterCard});</script></td>
              <td><script>trueOrFalse(${u.isEffectCard});</script><script>bg_color(${u.isEffectCard}, ${u.registerNum})</script></td>
              <td><a href="javascript:delete_ok('${u.registerNum}')" style="color: #222222; text-decoration: none">Delete</a></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>


