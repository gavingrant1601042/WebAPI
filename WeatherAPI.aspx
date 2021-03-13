<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeatherAPI.aspx.cs" Inherits="WebServices.WeatherAPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href ="style.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WeatherAPI</title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
              <input type="search"
            placeholder="Enter City Name"
            id="search-input"
            required
            autocomplete="off"
            />
            </center>
            <br>
        </br>
        <center>
        <button id="search-button">Search</button>
         
            &nbsp;
         
            <asp:Button ID="Button4" runat="server" PostBackUrl="~/index.aspx" Text="CRUD Operation" Height="40px" Width="108px" />
         
        </center>
        <div>
               <main id="app-container">
            <div id="location">
                <p>-------</p>
            </div>
                <div id="temp">
                    <img id="temp-icon" src="./icons/sun.svg" alt="">
                    <p><span id="temp-value">-----</span> <span id="temp-unit" >&#176c</span> </p>
                </div>

                <div id="climate">
                    <p>------</p>
                </div>





        </main>



















<script src="script.js">

</script>
        </div>
    </form>
</body>
</html>
