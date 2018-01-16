<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rent Calculator</title>
    <meta name="description" content="A form to calculate rent using user input" />
    <meta name="keywords" content="rent, rent calculator, london rent, london, london boroughs" />
    <meta http-equiv="author" content="Qamar Raja" />
    <link href="Content/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.css" rel="stylesheet"/>
</head>

<body>

    <div id="wrapper" class="container">

        <h1 class="h1">Rent Calculator</h1>
        <br />
        
        <div id="topDiv" class="col-md-12">
            <p id="mainText" class="h4">Below is a calculator that calculates rent depending upon the criteria you enter.</p>
            <%--<p class="lead">If you enter a London Borough, the number of bedrooms, the distance from the tube/train station, your Household income and whether you would like to pay the rent in monthly or weekly installments, you will be shown the relevant rent below.</p>--%>
        </div>
        <%--Ends topDiv--%>
        
        <br /><br />

        <div id="middleDiv" class="col-md-12">
            <form runat="server">

                <p class="instructionsText">Please fill in the form and press the button at the bottom to display your rent. <strong>Note:</strong> the fields marked with an asterisk (*) are required to proceed.</p>
                <br />
                <div class="row form-inline">
                    <div class="col-md-4">
                        <asp:Label ID="BoroughLabel" runat="server" Text="London Borough(*): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="False" CssClass="DropDownList form-control"></asp:DropDownList>
                    </div>
                </div>
                <br />

                <div class="row form-inline">

                    <div class="col-md-4">
                        <asp:Label ID="BedroomsLabel" runat="server" Text="Number of Bedrooms(*): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox ID="TextBoxBedrooms" runat="server" placeholder="Eg: 3" AutoPostBack="False" CssClass="TextBox form-control" OnTextChanged="TextBoxBedrooms_TextChanged"></asp:TextBox>
                    </div>
                    <span class="col-md-4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBedrooms" runat="server" ErrorMessage="Required Field!" ControlToValidate="TextBoxBedrooms" ForeColor="#FF3300" CssClass="RfValidator" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorBedrooms" runat="server" ErrorMessage="Please enure number of bedrooms is an integer between 1 and 10." ControlToValidate="TextBoxBedrooms" MaximumValue="10" MinimumValue="1" Type="Integer" ForeColor="#FF3300" CssClass="RangeValidator" Display="Dynamic" SetFocusOnError="True"></asp:RangeValidator>
                    </span>
                </div>
                <br />

                <div class="row form-inline">

                    <div class="col-md-4">
                        <asp:Label ID="StationDistanceLabel" runat="server" Text="Distance from Tube/Train station in miles(*): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox ID="TextBoxDist" runat="server" placeholder="Eg: 0.2" AutoPostBack="False" CssClass="TextBox form-control" OnTextChanged="TextBoxDist_TextChanged"></asp:TextBox>
                    </div>
                    <span class="col-md-4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDistance" runat="server" ErrorMessage="Required Field!" ControlToValidate="TextBoxDist" ForeColor="#FF3300" CssClass="RfValidator" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorDistance" runat="server" ErrorMessage="Please ensure distance is between 0 and 15 miles." ControlToValidate="TextBoxDist" MaximumValue="15" MinimumValue="0" Type="Double" ForeColor="#FF3300" CssClass="RangeValidator" Display="Dynamic" SetFocusOnError="True"></asp:RangeValidator>
                    </span>
                </div>

                <br />

                <div class="row form-inline">

                    <div class="col-md-4">
                        <asp:Label ID="IncomeLabel" runat="server" Text="Annual Household Income (in pounds): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:TextBox ID="TextBoxIncome" runat="server" placeholder="Eg: 11665.95" AutoPostBack="False" CssClass="TextBox form-control"></asp:TextBox>
                    </div>
                    <span class="col-md-4">
                        <asp:RangeValidator ID="RangeValidatorIncome" runat="server" ErrorMessage="Please ensure household income is between £0 and £1 000 000!" MinimumValue="0" Type="Double" MaximumValue="1000000" ControlToValidate="TextBoxIncome" ForeColor="Red" CssClass="RangeValidator" Display="Dynamic" SetFocusOnError="True"></asp:RangeValidator>
                    </span>
                </div>
                <br />

                <div class="row form-inline">

                    <div class="col-md-4">
                        <asp:Label ID="PaymentFrequencyLabel" runat="server" Text="Select payment plan: " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-md-4">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="False" CssClass="DropDownList form-control">
                            <asp:ListItem>monthly</asp:ListItem>
                            <asp:ListItem>weekly</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="buttonDisplayRentDiv col-md-12">
                        <asp:Button ID="ButtonDisplayRent" runat="server" Text="Display Rent" OnClick="ButtonDisplayRent_Click" CssClass="ButtonDisplayRent btn btn-dark" />
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="displayRentLabelDiv col-md-12">
                        <asp:Label ID="DisplayRentLabel" runat="server" CssClass="DisplayRentLabel" Visible="False"></asp:Label>
                    </div>
                </div>
            </form>
        </div>
        <%--Ends middleDiv--%>
    </div>
    <%--Ends wrapper Div--%>

    <br />

    <footer>
        <p>&copy; 2018 - Qamar Raja. The accuracy of this calculator cannot be guaranteed, and it should not be relied on to make financial decisions.</p>
    </footer>

    
</body>

</html>




<%--<asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>1 Bedroom</asp:ListItem>
                    <asp:ListItem>2 Bedrooms</asp:ListItem>
                    <asp:ListItem>3 Bedrooms</asp:ListItem>
                    <asp:ListItem>4 or more Bedrooms</asp:ListItem>
                </asp:DropDownList>--%>

<%-- <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="False">
                   <asp:ListItem Value="0-0.2 miles">0-0.2 miles</asp:ListItem>
                   <asp:ListItem Value="0.2-0.5 miles">0.2-0.5 miles</asp:ListItem>
                   <asp:ListItem Value="0.5-1 miles">0.5-1 miles</asp:ListItem>
                   <asp:ListItem Value="&gt;1 mile">&gt;1 mile</asp:ListItem>
               </asp:DropDownList>--%>