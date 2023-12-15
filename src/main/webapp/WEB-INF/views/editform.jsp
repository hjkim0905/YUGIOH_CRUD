<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>유희왕 카드 도감</title>
    <link rel="stylesheet" href="${path}/resources/css/my.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function validationCheck() {
            var fname = document.getElementById("name").value;
            if(fname.length < 2){
                alert("이름은 2자 이상 입력하세요");
                fname.focus();
                return false;
            }
        }

        //Double Validation Check by bootstrap
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByClassName('needs-validation');
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();


    </script>
    <script>
        function trueOrFalse(abc){
            var trueFalse = abc;
            if (trueFalse == 0){
                document.write("X") ;
            }
            else document.write("0");
        }
    </script>
</head>
<body>


<div>
    <div id="header">
        <a id="homeTitle" href="list" style="color: #225699"> 유희왕 카드 도감 </a>
    </div>

</div>

<div id="space" style="margin-top: 7%"></div>

<div id="resTitle" class="container">
    <div class="row">
        <div class="col-12">카드 도감 업데이트e</div>
    </div>
    <hr>
</div>

<div id="formdiv" class="container">
    <form:form action="addok" method="post" modelAttribute="yourModelAttribute" class="needs-validation" name="assignment" onsubmit="return validationCheck()" novalidate>
        <div class="row mb-5">
            <div class="col-md-4">
                <label class="form-label" for="cardLevel">레벨</label>
                <form:input type="text" path="cardLevel" id="cardLevel" cssClass="form-control" required="true" />
                <div class="invalid-feedback">레벨을 알려주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="cardName">이름</label>
                <form:input type="text" path="cardName" id="cardName" cssClass="form-control" required="true" />
                <div class="invalid-feedback">이름을 알려주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="cardType">속성</label>
                <form:input type="text" path="cardType" id="cardType" cssClass="form-control" required="true" />
                <div class="invalid-feedback">속성을 알려주세요(e.g.빛)</div>
            </div>
        </div>
        <div class="row mb-5">
            <div class="col-md-4">
                <label class="form-label" for="cardAtk">공격 능력치</label>
                <form:input type="text" path="cardAtk" id="cardAtk" cssClass="form-control" required="true" />
                <div class="invalid-feedback">공격 능력치를 입력해주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="cardDef">방어 능력치</label>
                <form:input type="text" path="cardDef" id="cardDef" cssClass="form-control" required="true" />
                <div class="invalid-feedback">방 능력치를 입력해주세요</div>
            </div>
            <div class="col-md-2">
                <p>몬스터 카드 여부</p>
                <form:radiobutton path="isMonsterCard" id="isMonsterCardTrue" value="true" />
                <label class="form-label" for="isMonsterCardTrue">&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:radiobutton path="isMonsterCard" id="isMonsterCardFalse" value="false" />
                <label class="form-label" for="isMonsterCardFalse">&nbsp;&nbsp;X&nbsp;&nbsp;</label>
                <div class="invalid-feedback">몬스터 카드 인가요?</div>
            </div>
            <div class="col-md-2">
                <p>효과 카드 여부</p>
                <form:radiobutton path="isEffectCard" id="isEffectCardTrue" value="true" />
                <label class="form-label" for="isEffectCardTrue">&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:radiobutton path="isEffectCard" id="isEffectCardFalse" value="false" />
                <label class="form-label" for="isEffectCardFalse">&nbsp;&nbsp;X&nbsp;&nbsp;</label>
                <div class="invalid-feedback">효과 카드 인가요?</div>
            </div>
        </div>
        <hr>
        <div class="row mb-5">
            <div class="col-12 d-flex justify-content-end">
                <input type="reset" name="reset" value="Reset" id="add">
                <input type="submit" name="add" value="Add" id="search">
            </div>
        </div>
    </form:form>

</div>

</body>
</html>






