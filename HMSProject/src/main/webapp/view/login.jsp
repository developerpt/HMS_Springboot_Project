<html>
<head>
  <title>Hospital Management System - Home</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <header>
    <h1>Hospital Management System</h1>
   
  </header>
  <main>
    <h2>Welcome to our Hospital Management System</h2>
    <p>Here you can manage your patients, appointments, and doctors.</p>
  </main>
  
</body>
</html>

<html>
<head>
  <title>Hospital Management System - Login</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  
  <main>
  
  <%

if(request.getAttribute("msg")!=null){
   out.print(request.getAttribute("msg"));
}

%>
  
    <h2>Login</h2>
    <form action="login" method="post">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username">
      <br>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password">
      <br><br>
      <input type="submit" value="Login">
      <p class="text--center">Not a member? <a href="createaccount">Sign up now</a> <svg class="icon">
        <use xlink:href="#icon-arrow-right"></use>
      </svg></p>
    </form>
  </main>
  <footer>
    <p>Copyright © 2021 Hospital Management System</p>
  </footer>
</body>
</html>

<<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

header {
  background-color: #4CAF50;
  color: white;
  text-align: center;
  padding: 1em;
}

nav {
  background-color: #eee;
  padding: 0.5em;
}

nav ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

nav li {
  display: inline-block;
}

nav a {
  color: #000;
  text-decoration: none;
  padding: 0.5em 1em;
}

nav a:hover {
  background-color: #4CAF50;
  color: white;
}

main {
  padding: 2em;
}

footer {
  background-color: #4CAF50;
  color: white;
  text-align: center;
  padding: 1em;
}

body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

header {
  background-color: #4CAF50;
  color: white;
  text-align: center;
  padding: 1em;
}

main {
  padding: 2em;
}

label {
  display: block;
  font-weight: bold;
  margin-bottom: 0.

</style>
