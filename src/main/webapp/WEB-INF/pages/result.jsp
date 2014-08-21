<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page session="false" %>
<html>
<head>
    <title>Musteri Dogrulama Sonucu</title>
</head>
<body>
<h3>
    Musteri Dogrulama Sonucu..
</h3>
<hr/>

<strong>Adi :</strong>${customer.name}<br>
<strong>Email :</strong>${customer.email}<br>
<strong>Telefon :</strong>${customer.phone}<br>
<strong>Yasi:</strong>${customer.age}<br>
<strong>Cinsiyeti :</strong>${customer.gender}<br>
<strong>Dogum Tarihi :</strong><fmt:formatDate value="${customer.birthday}" type="date"/><br>

<hr/>
</body>
</html>
