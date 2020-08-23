<%--
  Created by IntelliJ IDEA.
  User: R
  Date: 8/10/2020
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>lab 2</title>
  <style>
    #wrapper {
      width: 30%;
      margin: 50px auto;
      padding: 50px;
      background: #1cb5c6;
    }
    form {
      margin: 30px auto;
    }
    .textInput {
      border: none;
      height: 28px;
      margin: 2px;
      border: 1px solid #8aa76e;
      font-size: 1.2em;
      padding: 5px;
      width: 95%;
    }
    .textInput:focus {
      outline: none;
    }
    .btn {
      width: 98.6%;
      border: none;
      margin-top: 5px;
      color: white;
      background-color: #3b5998;
      border-radius: 5px;
      padding: 12px;
    }
    .btn-q {
      width: 98.6%;
      border: none;
      margin-top: 5px;
      color: white;
      background-color: #3b5998;
      border-radius: 5px;
      padding: 12px;
    }
  </style>
</head>
<body>
<div id="wrapper">
  <form method="POST" onsubmit="return Validate()" name="form">
    <div id="id">
      <label>Name</label> <br>
      <input type="text" name="Name" class="textInput">
      <div id="Name"></div>
    </div>
    <div id="username_div">
      <label>Username</label> <br>
      <input type="text" name="username" class="textInput">
      <div id="name_error"></div>
    </div>
    <div id="reg_div">
      <label>Regno</label> <br>
      <input type="text" name="reg" class="textInput">
      <div id="reg_error"></div>
    </div>
    <div id="dept_div">
      <label for="dept">Depatment:</label><br>

      <select id="dept" name="dept">
        <option value="CS">computer science</option>
        <option value="SE">Software Engineering</option>
        <option value="ME">Mechanical Engineering</option>
        <option value="CE">Civil Engineering</option>
        <option value="EE">Electrical Engineering</option>
        <option value="BA">Business administration</option>
        <option value="AF">Accounting and finance</option>
        <option value="BT">Bio Technology</option>
        <option value="BS">Bio Sciences</option>
      </select>
      <br>
      <input type="text" name="dept" class="textInput">
      <div id="dept_error"></div>
    </div>
    <div id="password_div">
      <label>Password</label> <br>
      <input type="password" name="password" class="textInput">
    </div>
    <div id="pass_confirm_div">
      <label>Password confirm</label> <br>
      <input type="password" name="password_confirm" class="textInput">
      <div id="password_error"></div>
    </div>
    <div id="email_div" style="color: rgb(94, 110, 102);">
      <label>Email</label> <br>
      <input type="email" name="email" class="textInput" style="border: 1px solid rgb(94, 110, 102);">
      <div id="email_error"></div>
    </div>
    <div>
      <input type="cancel" name="Cancel" value="Cancel" class="btn-q">
    </div>
    <div>

      <input type="submit" name="register" value="Register" class="btn">
    </div>
  </form>
</div>


<script>
  // SELECTING ALL TEXT ELEMENTS
  var username = document.forms['form']['username'];
  var email = document.forms['form']['email'];
  var password = document.forms['form']['password'];
  var password_confirm = document.forms['form']['password_confirm'];
  // SELECTING ALL ERROR DISPLAY ELEMENTS
  var name_error = document.getElementById('name_error');
  var email_error = document.getElementById('email_error');
  var password_error = document.getElementById('password_error');
  // SETTING ALL EVENT LISTENERS
  username.addEventListener('blur', nameVerify, true);
  email.addEventListener('blur', emailVerify, true);
  password.addEventListener('blur', passwordVerify, true);
  // validation function
  function Validate() {
    // validate username
    if (username.value == "") {
      username.style.border = "1px solid red";
      document.getElementById('username_div').style.color = "red";
      name_error.textContent = "Username is required";
      username.focus();
      return false;
    }
    // validate username
    if (username.value.length < 3) {
      username.style.border = "1px solid red";
      document.getElementById('username_div').style.color = "red";
      name_error.textContent = "Username must be at least 3 characters";
      username.focus();
      return false;
    }
    // validate email
    if (email.value == "") {
      email.style.border = "1px solid red";
      document.getElementById('email_div').style.color = "red";
      email_error.textContent = "Email is required";
      email.focus();
      return false;
    }
    // validate password
    if (password.value == "") {
      password.style.border = "1px solid red";
      document.getElementById('password_div').style.color = "red";
      password_confirm.style.border = "1px solid red";
      password_error.textContent = "Password is required";
      password.focus();
      return false;
    }
    // check if the two passwords match
    if (password.value != password_confirm.value) {
      password.style.border = "1px solid red";
      document.getElementById('pass_confirm_div').style.color = "red";
      password_confirm.style.border = "1px solid red";
      password_error.innerHTML = "The two passwords do not match";
      return false;
    }
  }
  // event handler functions
  function nameVerify() {
    if (username.value != "") {
      username.style.border = "1px solid #5e6e66";
      document.getElementById('username_div').style.color = "#5e6e66";
      name_error.innerHTML = "";
      return true;
    }
  }
  function emailVerify() {
    if (email.value != "") {
      email.style.border = "1px solid #5e6e66";
      document.getElementById('email_div').style.color = "#5e6e66";
      email_error.innerHTML = "";
      return true;
    }
  }
  function passwordVerify() {
    if (password.value != "") {
      password.style.border = "1px solid #5e6e66";
      document.getElementById('pass_confirm_div').style.color = "#5e6e66";
      document.getElementById('password_div').style.color = "#5e6e66";
      password_error.innerHTML = "";
      return true;
    }
    if (password.value === password_confirm.value) {
      password.style.border = "1px solid #5e6e66";
      document.getElementById('pass_confirm_div').style.color = "#5e6e66";
      password_error.innerHTML = "";
      return true;
    }
  }
</script><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta name="Robots" content="NOINDEX ">
<script type="text/javascript">
  var gearPage = document.getElementById('GearPage');
  if(null != gearPage)
  {
    gearPage.parentNode.removeChild(gearPage);
    document.title = "Error";
  }
</script>
</body></html>