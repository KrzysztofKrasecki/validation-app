<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab_4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Walidacja</title>
      <style>

       .glowny_blok {
        width: 550px;
        height: auto;
        border: solid 3px black;
        margin-top: 20px;
        margin-bottom: 20px;
        padding: 5px;     
      }
      
      </style>

  </head>

  <body>
    <form id="form1" runat="server">
        <div class="glowny_blok">
      <div>
          
        <p>Nazwisko:
          
          <asp:TextBox ID="Nazwisko" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="Nazwisko" ErrorMessage="Wymagane pole!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>

        <p>Hasło:  
          <asp:TextBox ID="Hasło" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="Hasło" ErrorMessage="Wymagane pole!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="REV1" runat="server" ControlToValidate="Hasło" ErrorMessage="Hasło musi mieć co najmniej 6 znaków" ForeColor="Red" ValidationExpression="^\w{6,}"></asp:RegularExpressionValidator>
        </p>

        <p>Potwierdzenie hasła:
          <asp:TextBox ID="p_Hasło" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RFV3" runat="server" ControlToValidate="p_Hasło" ErrorMessage="Wymagane pole!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CV1" runat="server" ControlToCompare="Hasło" ControlToValidate="p_Hasło" ErrorMessage="Musi być takie samo jak hasło!" ForeColor="Red"></asp:CompareValidator>
        </p>

        <p>Wiek:
          <asp:TextBox ID="Wiek" runat="server"></asp:TextBox>
          <asp:RangeValidator ID="RV1" runat="server" ControlToValidate="Wiek" ErrorMessage="Mnimum 18 - Maksimum 150" ForeColor="Red" MaximumValue="150" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        </p> 

        <p>Nr albumu:
          <asp:TextBox ID="Nr_albumu" runat="server"></asp:TextBox>
          <asp:RegularExpressionValidator ID="REV2" runat="server" ControlToValidate="Nr_albumu" ErrorMessage="Format: lclclc" ForeColor="Red" ValidationExpression="^[a-zA-Z]\d[a-zA-Z]\d[a-zA-Z]\d$"></asp:RegularExpressionValidator>
        </p>

        <p>Nr telefonu stacjonarnego:
          <asp:TextBox ID="nr_telefonu" runat="server"></asp:TextBox>
          <asp:RegularExpressionValidator ID="REV3" runat="server" ControlToValidate="nr_telefonu" ErrorMessage="Format: (cc) ccc-cc-cc" ForeColor="Red" ValidationExpression="^\(\d{2}\) \d{3}-\d{2}-\d{2}$"></asp:RegularExpressionValidator>
        </p>
      </div>
      <br />
      <asp:Button ID="Przycisk" runat="server" Text="Wyślij" OnClick="Click" />
    </form>


  </body>

</html>
