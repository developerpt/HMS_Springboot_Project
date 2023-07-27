<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<head>
  <title>Login/Sign Up Form</title>
</head>
<body>
  <div class="container">
    <!-- sign in page -->
    <form method="POST" action="signin" class="form form--hidden" id="login">
      <h1 class="form__title">Login</h1>
      <div class="form__input-group">
        <label for="username">Username: </label>
        <input type="text" class="form__input" name="username" id="username" maxlength="20" required> 
      </div>
      <div class="form__input-group">
        <label for="pass">Password: </label>
        <input type="password" class="form__input" name="password" id="pass" maxlength="20" required> 
      </div>
      <div class="form__input-group">
        <button type="submit" class="form__button">Submit</button>
      </div>
      <p>
        <a class="form__link" href="./" id="linkRegister">Don't have an account? Register</a>
      </p>
   </form>
    
   <!--  create account page -->
   <form method="POST" action="signin" class="form " id="register">
     <h1 class="form__title">Register</h1>
     <div class="form__input-group">
       <label for="username"> Username: </label>
       <input type="text" class="form__input" name="username" id="username" maxlength="20" required>
     </div>
      <div class="form__input-group">
        <label for="password">Password: </label>
        <input type="password" class="form__input" name="password" id="password" maxlength="20" required> 
      </div>
     <button class="form__button" type="submit">Submit</button>
     <p>
        <a class="form__link" href="hms" id="linkLogin">Already have an account? Sign in</a>
      </p>
   </form>
    
  </div>
  
  <script src="scripts/main.js"></script>
  
  
</body>




</body>
</html>


<style> 

body{
  --color-primary: #ccd5ae;
  --color-primary-dark: #b9c29e;
  --color-secondary: #e8e8e4;
  --color-third: #9B2226;
  --color-background: #d8e2dc;
  --border-radius: 4px;
  
  margin: 0;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 18px;
  background: var(--color-background);
}

.container {
  width: 400px;
  max-width: 400px;
  margin: 1rem;
  padding: 2rem;
  box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
  border-radius: var(--border-radius);
  background: var(--color-secondary);
}

.container,
.form__input-username,
.form__input-password,
.form__button{
  font: 500;
}

.form > *:first-child {
  margin-top: 0;
  
}

.form > *:last-child {
  margin-bottom: 0;
}

.form__title {
  margin-bottom: 1rem;
  text-align: center;
}

.form__input-group {
  margin-bottom: 1rem;
}

.form__input {
  display: block;
  width: 100%;
  padding: 0.75rem;
  box-sizing: border-box;
  border-radius: var(--border-radius);
  border: 1px solid #dddddd;
  outline: none;
  background: #eeeeee;
  transition: background 0.2s, border-color 0.2s;
}

.form__input:focus {
  border-color: var(--color-primary);
  background: #ffffff;
}

.form__button {
  width: 100%;
  padding: 1rem 2rem;
  font-weight: bold;
  font-size: 1.1rem;
  color: #ffffff;
  border: none;
  border-radius: var(--border-radius);
  outline: none;
  cursor: pointer;
  background: var(--color-primary);
}

.form__button:hover {
  background: var(--color-primary-dark);
}

.form__button:active {
  transform: scale(0.98);
}

.form--hidden {
  display: none;
}

.form__link {
  color: var(--color-third);
  text-decoration: none;
  cursor: pointer;
}

.form__link:hover {
  text-decoration: underline;
}

</style>