<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form"
           prefix="springForm" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Musteri Dogrulama Sayfasi </title>
    <style>
        .error {
            color: #ff0000;
            font-style: italic;
            font-weight: bold;
        }
    </style>
</head>
<body>

<springForm:form method="POST" commandName="customer"
                 action="save.do">
    <table>
        <tr>
            <td>Adi:</td>
            <td><springForm:input path="name"/></td>
            <td><springForm:errors path="name" cssClass="error"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><springForm:input path="email"/></td>
            <td><springForm:errors path="email" cssClass="error"/></td>
        </tr>
        <tr>
            <td>Yasi:</td>
            <td><springForm:input path="age"/></td>
            <td><springForm:errors path="age" cssClass="error"/></td>
        </tr>
        <tr>
            <td>Cinsiyeti :</td>
            <td><springForm:select path="gender">
                <springForm:option value="" label="Lutfen Seciniz"/>
                <springForm:option value="MALE" label="Erkek"/>
                <springForm:option value="FEMALE" label="Kadin"/>
            </springForm:select></td>
            <td><springForm:errors path="gender" cssClass="error"/></td>
        </tr>
        <tr>
            <td>Dogum Tarihi:</td>
            <td><springForm:input path="birthday" placeholder="MM/dd/yyyy"/></td>
            <td><springForm:errors path="birthday" cssClass="error"/></td>
        </tr>
            <tr>
            <td>Telefon:</td>
            <td><springForm:input path="phone" /></td>
            <td><springForm:errors path="phone" cssClass="error" /></td>
            </tr>
        <tr>
            <td colspan="3"><input type="submit" value="Dogrula"></td>
        </tr>
    </table>

</springForm:form>

</body>
</html>