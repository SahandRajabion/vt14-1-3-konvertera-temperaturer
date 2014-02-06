using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KonverteraTemperaturer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                convert.Visible = true;

                // Initierar variablerna som tolkar värdet i de tre olika textboxarna.
                var startVarde = int.Parse(TextBox1.Text);
                var slutVarde = int.Parse(TextBox2.Text);
                var intervall = int.Parse(TextBox3.Text);

                
                //Gör så att rubriken på tabellen ändras utifrån vad användaren väljer i radioknapparna.
                if (fTc.Checked)
                {
                    up.Text = "&degF";
                    bottom.Text = "&degC";
                    
                
                }

                //Loopar igenom row och cell, för att rita upp tabellen utifrån de angivna värdena av användaren.
                for (int i = startVarde; i <= slutVarde; i += intervall)
                {

                    //Skapar ett nytt objekt för raderna
                    TableRow Row = new TableRow();
                    
                    //Skapar en array med innehållande 2 kolumner.
                    TableCell[] Cell = new TableCell[]
                    { 
                        new TableCell(), new TableCell()
                    };

                    //Lägger slutligen till rader och kolumner efter vilka värden Row och arrayen Cell fått efter loopen.
                    tabel.Rows.Add(Row);
                    Row.Cells.AddRange(Cell);



                    if (fTc.Checked)
                    {
                        Cell[0].Text = String.Format("{0}", Model.TemperatureConverter.FahrenheitToCelsius(i));
                    }
                    else
                    {
                        Cell[1].Text = String.Format("{0}", Model.TemperatureConverter.CelsiusToFahrenheit(i));
                    }









                   /*
                     Cell[0].Text = String.Format("{0}", i);
                     Cell[1].Text = fTc.Checked ?
                         String.Format("{0}", Model.TemperatureConverter.FahrenheitToCelsius(i)) :
                         String.Format("{0}", Model.TemperatureConverter.CelsiusToFahrenheit(i));
                    */

                
                }

            }
        }
    }
}










     



