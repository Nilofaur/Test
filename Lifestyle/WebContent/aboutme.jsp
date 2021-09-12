
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>aboutme</title>
</head>
<body>


<form action="aboutme" method="post">
Current weight in kgs <input type="text" name="weight"> <br>
Height in cms <input type="text" name="height"> <br>
age <input type="text" name="age"> <br>
Goal Weight <input type="text" name="goal "> <br>

Ethnicity <input type="text" name="ethnicity"> <br>

  <p>How would you describe your normal activities</p>
  <input type="radio" id="sedentary" name="fav_language" value="sedentary">
  <label for="sedentary">Sedentary</label><br>
  <input type="radio" id="la" name="fav_language" value="la">
  <label for="la">Lightly Active</label><br>
  <input type="radio" id="active" name="fav_language" value="active">
  <label for="active">active</label>
  <input type="radio" id="va" name="fav_language" value="va">
  <label for="va">veryactive</label>
 <input type="submit">

</form>
  

</body>
</html>