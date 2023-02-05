using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Najnoviji_Projekat.Projekat
{
    
    public partial class Creditals : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=ROARY;Initial Catalog=projekat;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string ime = "";
                string adresa = "";
                int telefon;
                string kartica = "null";
                string vrstaDostave="";
                string proizvod="";

                if (Request.HttpMethod == "POST")
                {
                    ime = Request.Form["ime"];
                    adresa = Request.Form["adresa"];
                    telefon = int.Parse(Request.Form["telefon"]);
                    kartica = Request.Form["kreditnaKartica"];
                    vrstaDostave = Request.Form["dostava"];
                    proizvod = Request.Form["proizvod"];

                    UbacivanjeUTabelu(ime, adresa, telefon, kartica,vrstaDostave, proizvod);

                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }

        }

        void UbacivanjeUTabelu(string ime, string adresa, int telefon, string kartica, string dostava, string proizvod)
        {
            using (con)
            {
                con.Open();

                //ZA PROIZVOD
                int proizvodID;
                int korisnikID;

                SqlParameter prop = new SqlParameter();

                prop.Value = proizvod.Trim();
                prop.ParameterName = "@PROP";

                string proupit = "Select * From Proizvodi Where Naziv='Maxer'";

                SqlCommand procmd = new SqlCommand(proupit,con);
                procmd.Parameters.Add(prop);

                SqlDataReader r1=procmd.ExecuteReader();
                
      
 

                if (r1.HasRows)
                {
                    r1.Read();
                    proizvodID = int.Parse(r1[0].ToString());
                    r1.Close();

        

                    //ZA KORISNIKA

                    SqlParameter p1 = new SqlParameter();
                    SqlParameter p2 = new SqlParameter();
                    SqlParameter p3 = new SqlParameter();
                    SqlParameter p4 = new SqlParameter();
                    SqlParameter p5 = new SqlParameter();

                    p1.Value = ime;
                    p2.Value = adresa;
                    p3.Value = telefon;
                    p4.Value = kartica;
                    p5.Value = telefon;

                    p1.ParameterName = "@IME";
                    p2.ParameterName = "@ADRESA";
                    p3.ParameterName = "@TELEFON";
                    p4.ParameterName = "@KARTICA";
                    p5.ParameterName = "@TELEFON1";
                    string select = "Select * FROM Korisnici Where brojTelefona=@TELEFON1";

                    SqlCommand cmd1 = new SqlCommand(select, con);
                    cmd1.Parameters.Add(p5);

                    SqlDataReader dr = cmd1.ExecuteReader();
                    dr.Read();
                   
                    if (!dr.HasRows)
                    {
                        
                        dr.Close(); 
                    string upit = "INSERT INTO Korisnici(Ime,Adresa,brojTelefona,kreditnaKartica)" +
                                "values(@IME,@ADRESA,@TELEFON, @KARTICA)";

                        SqlCommand cmd = new SqlCommand(upit, con);
                        cmd.Parameters.Add(p1);
                        cmd.Parameters.Add(p2);
                        cmd.Parameters.Add(p3);
                        cmd.Parameters.Add(p4);

                        cmd.ExecuteNonQuery();

                    }
                    else
                    {
                        korisnikID = int.Parse(dr[0].ToString());
                        System.Diagnostics.Debug.WriteLine("Vec Postoji korisnik u bazi");
                        dr.Close();
                        System.Diagnostics.Debug.WriteLine($"{korisnikID} {proizvodID} {dostava}");

                        SqlParameter s1 = new SqlParameter();
                        SqlParameter s2 = new SqlParameter();
                        SqlParameter s3 = new SqlParameter();

                        s1.Value = korisnikID;
                        s2.Value = proizvodID;
                        s3.Value = dostava;

                        s1.ParameterName = "@korisnikID";
                        s2.ParameterName = "@proizvodID";
                        s3.ParameterName = "@dostava";

                        string porudzbina = "INSERT INTO Porudzbina(KorisnikID,VrstaDostave,ProizvodiID) " +
                                            "values(@korisnikID,@dostava,@proizvodID)";

                        SqlCommand porudzbinaCMD = new SqlCommand(porudzbina, con);
                        porudzbinaCMD.Parameters.Add(s1);
                        porudzbinaCMD.Parameters.Add(s2);
                        porudzbinaCMD.Parameters.Add(s3);

                        porudzbinaCMD.ExecuteNonQuery();
                    }
                    dr.Close();


                    
                
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("Taj Proizvod ne postoji");
                    r1.Close();
                }
                r1.Close();
            }
        }
    }
}