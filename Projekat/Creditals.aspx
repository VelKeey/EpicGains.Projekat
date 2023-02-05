<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Creditals.aspx.cs" Inherits="Najnoviji_Projekat.Projekat.Creditals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Epic Gains</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="Creditals.css" />
</head>
<body>

  <div class="bigdiv1">
      <div class="container1" style="background-color:rgb(41,41,41);">
            <a href="Epic Gains.aspx" class="a1"><img src="../Slike/Epic-Games-Symbol.png"/></a>
            <a href="Epic Gains.aspx" class="a1"><p class="par">STORE</p></a>
            <a href="FAQ.aspx" class="a1"><p class="par">FAQ</p></a>
            <a href="HELP.aspx" class="a1"><p class="par">HELP</p></a>
            <a href="BROWSE.aspx" class="a1"><p class="par">UNREAL GAINS</p></a>
            
           

          </div>
      <div class="download" style="background-color:rgb(41,41,41);">
           
       
             <a href="SIGN IN.aspx" class="a2"><img src="../Slike/Lik.png" alt=""><p id="p1" >SIGN IN</p></a>
             <a href="" class="a3"><p id="p2" >DOWNLOAD</p></a> 
      </div>
  </div>
      <div class="SVE"> 
    <form id="formular" runat="server" method="post" style="background-color:black;">
        <div id="greska"></div>
        <br />
        <br />
        <br />
        <br />
        <div>
            <fieldset class="form-group">
                <legend>Licni podaci</legend>
                <div class="form-group col-6">
                    <label for="ime">Ime i Prezime</label>
                    <input type="text" id="ime" class="form-control col-6" placeholder="Lazar Stevanovic" name="ime" />
                
                    <div class="invalid-feedback">
                        Please provide a valid last name.
               
                    </div>
                    <br />
                    <br />
                </div>
                <div class="form-group col-6">
                    <label for="adresa">Adresa*</label>
                 
                    <input type="text" id="adresa" class="form-control col-6" placeholder="Pere Kosorica,33" name="adresa" />
                    <div class="invalid-feedback">
                        Please provide a valid last name.
               
                    </div>
                    <br />
                    <br />
                </div>
                <div class="form-group col-6">
                    <label for="telefon">Broj Telefona</label>
                    <input type="text" id="telefon" class="form-control col-6" placeholder="0641319317" name="telefon" />
               
                    <div class="invalid-feedback">
                        Please provide a valid last name.
               
                    </div>
                    <br />
                    <br />
                </div>
            </fieldset>
            <fieldset>
                <legend>Dostava</legend>
                <div class="form-group col-6">
                    <label for="dostava">Izaberi dostavu</label>
                    <input type="text" id="dostava" class="form-control col-6" placeholder="Dostava do Kuce/Preuzeti u prodavnici" name="dostava" />
                 
                    <div class="invalid-feedback">
                        Please provide a valid last name.
               
                    </div>
                    <br />
                    <br />
                </div>
                <div class="form-group col-6">
                    <label for="proizvod">Ime proizvoda</label>
                    <input type="text" id="proizvod" class="form-control col-6" placeholder="Proizvod" name="proizvod" />
                    <div class="invalid-feedback">
                        Please provide a valid last name.
               
                    </div>
                 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <label for="placanje">Nacin placanja:</label>
                <div class="form-group col-6">
                    <div class="form-check-inline">
                        <input type="radio" id="uzivo" class="form-check-input" name="placanje" value="1" checked="checked" />
                
                        <label for="uzivo" class="form-check-label">Placanje uzivo</label>
                    </div>
                    <div class="form-check-inline">
                        <input type="radio" id="online" class="form-check-input" name="placanje" value="2" />
                        <label for="online" class="form-check-label">Placanje online</label>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="form-group " id="divOnline">
                        <label for="kreditnaKartica">Kreditna kartica</label>
                        <input type="text" id="kreditnaKartica" placeholder="1234-1234-1234-1234" class="form-control" name="kreditnaKartica" />
           
                        <div class="invalid-feedback">
                            Please provide a valid last name.
                    
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="dugmad">
                <div class="form-group text-center">
                    <button id="posalji" type="submit" class="btn-primary btn" runat="server">Potvrdi</button>

                </div>
                <div class="form-group text-center">
                    <button id="obrisi" type="reset" class="btn-danger btn">Obrisi</button>
                </div>
            </div>
        </div>
    </form>
  </div>
    <script src="Creditals.js"></script>
</body>
</html>