<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KonverteraTemperaturer.Default"  ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Konvertera Temperatur!</title>
       
    <link href ="~/Content/bj.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Button1">
       
        <h1>Konvertera din Temperatur!</h1>
       <div id ="summary">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Fel inträffade. Åtgärda felen och försök igen."/>
           </div>


        <div id="tabellen">
        <asp:Label ID="convert" runat="server"  Visible="false">
        <asp:Table ID="tabel" runat="server">
        
        <asp:TableHeaderRow>
        <asp:TableHeaderCell ID="up" runat="server">&degC</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="bottom" runat="server">&degF</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        </asp:Table>
        </asp:Label>
        </div>

        <div id="content">
     <span id="start">Starttemperatur:</span>  
    <div>
         
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" Text="*" ErrorMessage="Fyll i en starttemperatur" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator" runat="server" Text="*" ErrorMessage="Ange ett heltal" ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator>
       
    </div>

    <span id="slut">Sluttemperatur:</span> 
    <div>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" runat="server" ErrorMessage="Fyll i en sluttemperatur" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" Text="*" ErrorMessage="Ange ett heltal" ControlToValidate="TextBox2" Operator="DataTypeCheck" Type="Integer"  Display="Dynamic"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidatorn" runat="server" Text="*" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Operator="GreaterThanEqual" Type="Integer" Display="Dynamic"  ErrorMessage="Sluttemperaturen måste vara högre än Starttemperaturen."></asp:CompareValidator>
    
    
    </div>

    <span id="steg">Temperatursteg:</span> 
    <div>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="*" runat="server" ErrorMessage="Fyll i ett temperatursteg" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" Text="*" ErrorMessage="Ange ett heltal" ControlToValidate="TextBox3" Operator="DataTypeCheck" Type="Integer"  Display="Dynamic"></asp:CompareValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" Text="*" ErrorMessage="Temperatursteget måste ligga mellan 1 och 100." MaximumValue="100" MinimumValue="1" Display="Dynamic" Type="Integer" ControlToValidate="TextBox3"></asp:RangeValidator>
    </div>
    

        <span id="typ">Typ av konvertering</span>

     <div>
        <asp:RadioButton ID="cTf" runat="server" Text="Celsius till Farenheit" GroupName="asdf"  checked="true"/>
    </div>

    <div>
        <asp:RadioButton ID="fTc" runat="server" Text="Farenheit till Celsius" GroupName="asdf" />
    </div>
    
    <div id="buttons">
        <asp:Button ID="Button1" runat="server" Text="Konvertera" OnClick="Button1_Click" />
    </div>

        </div>
    </form>
    <script type="text/javascript">
        var textBox = document.getElementById("TextBox1");
        TextBox1.focus();
        TextBox1.select();
    </script>

</body>
</html>
