<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIGN IN.aspx.cs" Inherits="Najnoviji_Projekat.Projekat.SIGN_IN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <link rel="stylesheet" href="SIGN IN.css"/>
</head>
<body>
    <form action="post" class="formular">
        <fieldset>
            <div><img src="../Slike/Epic-Games-Symbol.png" alt=""></div>
            <div class="signin">Sign in with Epic Gains Account</div>
            <div>
            <input type="email" id="korisnicko_Ime" placeholder="Email Adress" minlength="6" maxlength="20" class="input"/><br/><br/>
            <input type="password" id="Sifra" placeholder="Password" minlength="6" maxlength="20" class="input"/><br/><br/>
            
            
            </div>
            <div class="container"><p>
                <p id="check"><input type="checkbox" id="input1"/>Remember me</p>
                <p class="ppp"><a href="" class="lol">Forget the password?</a></p>
                
            </p></div>
            <div><button type="submit" id="login">LOG IN NOW</button><br><br></div>
            <p class="ppp"><a href="" class="lol">Privacy policy</a></p>
            <p class="ppp">Dont have an Epic Gains account?<a href="" class="lol">Sign up</a></p>
        </fieldset>
    </form>
</body>
</html>