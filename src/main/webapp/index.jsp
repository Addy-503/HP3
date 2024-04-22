<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-dJQNOzl1NRZeOQIquL/unzUz6dbf6JlT8hMzyCqP5i3ZTuEgAX9Dm3vO8R00Ij9P+SOVuQGomlpMlH9NbqR4qg==" crossorigin="anonymous" />

<meta charset="UTF-8">

<title>Horse Power</title>
<style > 
/* Apply a basic reset to remove default styles */
 {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

 Style for the form container 
form {
    max-width: 400px;
    margin: 20px auto;
}


/* Style for form inputs */
input[type="text"],
input[type="email"],
input[type="password"],
textarea {
    width: 10%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

/* Style for form buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

/* Additional styles for anchor tags */
a {
    color: #007BFF;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
</style>
</head>

<body>
<jsp:useBean id="Beans" class="org.Hp3.Beans" scope="page"></jsp:useBean>


	<form action="<%=request.getContextPath()%>/Controller" method="get">
	 First name: <input type="text" name="firstName"  value='<jsp:getProperty property="firstName" name="Beans"/>'><br>
	 Last name:  <input type="text" name="lastName"  value='<jsp:getProperty property="lastName" name="Beans"/>'><br>
		
		 Gender: <input type="radio" name="Gender" value="Male" checked>Male<br>
		 <input	type="radio" name="Gender" value="female">Female<br>
		Languages: <input type="checkbox" name="Language" value="English">English<br>
		<input type="checkbox" name="Language" value="Hindi">Hindi<br>
		<input type="checkbox" name="Language" value="Urdu">Urdu<br>
		<input type="checkbox" name="Language" value="French">French<br>
		Country:<select name="Country">
			<option value="India">India</option>
			<option value="India">USA</option>
			<option value="India">Luxembourg</option>
			<option value="India">England</option>
		</select> 
		<input type="submit" value="submit">


	</form>	


	<br>
	<a href="<%=request.getContextPath()%>/home?page=home">home</a>
	<br>
	<a href="<%=request.getContextPath()%>/home?page=login">login</a>
	<br>
	<a href="<%=request.getContextPath()%>/home?page=About">About</a>
		<br>
	<a href="<%=request.getContextPath()%>/home?page=signup">Signup</a>
	
</body>
</html>