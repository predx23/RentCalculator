<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%-- Favicon files for various browsers/formats --%>
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png" />
    <link rel="manifest" href="favicon/site.webmanifest" />
    <link rel="mask-icon" href="favicon/safari-pinned-tab.svg" />

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
            <p id="mainText" class="h4">Use the form below to calculate rent for a house based in London.</p>
        </div>
        
        <br /><br /><br />

        <div id="middleDiv" class="form-horizontal">

            <form runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <p class="instructionsText">Please fill in the form and press the button at the bottom to display your rent. <strong>Note:</strong> the fields marked with an asterisk (*) are required to proceed.</p>
                <br />

                <%--AJAX is used to stop the whole page reloading when user enters data--%>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                <div class="row form-inline">
                    <div class="col-sm-6 col-md-4 labeldiv">
                        <asp:Label ID="BoroughLabel" runat="server" Text="London Borough(*): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="DropDownList form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
                <br />

                <div class="row form-inline">

                    <div class="col-sm-6 col-md-4 labeldiv">
                        <asp:Label ID="BedroomsLabel" runat="server" Text="Number of Bedrooms(*): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <asp:TextBox ID="TextBoxBedrooms" runat="server" placeholder="Eg: 3" AutoPostBack="True" CssClass="TextBox form-control" OnTextChanged="TextBoxBedrooms_TextChanged"></asp:TextBox>
                    </div>
                    <span class="col-sm-6 offset-sm-6 col-md-4 offset-md-0">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBedrooms" runat="server" ErrorMessage="Required Field!" ControlToValidate="TextBoxBedrooms" ForeColor="#FF3300" CssClass="RfValidator" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorBedrooms" runat="server" ErrorMessage="Please enure number of bedrooms is an integer between 1 and 10." ControlToValidate="TextBoxBedrooms" MaximumValue="10" MinimumValue="1" Type="Integer" ForeColor="#FF3300" CssClass="RangeValidator" Display="Dynamic" SetFocusOnError="True"></asp:RangeValidator>
                    </span>
                </div>
                <br />

                <div class="row form-inline" style="height:auto;">

                    <div class="col-sm-6 col-md-4 labeldiv">
                        <asp:Label ID="StationDistanceLabel" runat="server" Text="Distance from Tube/Train station in miles(*): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <asp:TextBox ID="TextBoxDist" runat="server" placeholder="Eg: 0.2" AutoPostBack="True" CssClass="TextBox form-control" OnTextChanged="TextBoxDist_TextChanged"></asp:TextBox>
                    </div>
                    <span class="col-sm-6 offset-sm-6 col-md-4 offset-md-0">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDistance" runat="server" ErrorMessage="Required Field!" ControlToValidate="TextBoxDist" ForeColor="#FF3300" CssClass="RfValidator" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorDistance" runat="server" ErrorMessage="Please ensure distance is between 0 and 15 miles." ControlToValidate="TextBoxDist" MaximumValue="15" MinimumValue="0" Type="Double" ForeColor="#FF3300" CssClass="RangeValidator" Display="Dynamic" SetFocusOnError="True"></asp:RangeValidator>
                    </span>
                </div>

                <br />

                <div class="row form-inline">

                    <div class="col-sm-6 col-md-4 labeldiv">
                        <asp:Label ID="IncomeLabel" runat="server" Text="Annual Household Income (in pounds): " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <asp:TextBox ID="TextBoxIncome" runat="server" placeholder="Eg: 11665.95" AutoPostBack="True" CssClass="TextBox form-control" OnTextChanged="TextBoxIncome_TextChanged"></asp:TextBox>
                    </div>
                    <span class="col-sm-6 col-md-4 offset-md-0">
                        <asp:RangeValidator ID="RangeValidatorIncome" runat="server" ErrorMessage="Please ensure household income is between £0 and £1 000 000!" MinimumValue="0" Type="Double" MaximumValue="1000000" ControlToValidate="TextBoxIncome" ForeColor="Red" CssClass="RangeValidator" Display="Dynamic" SetFocusOnError="True"></asp:RangeValidator>
                    </span>
                </div>
                <br />

                <div class="row form-inline">

                    <div class="col-sm-6 col-md-4 labeldiv">
                        <asp:Label ID="PaymentFrequencyLabel" runat="server" Text="Select payment plan: " CssClass="Labels"></asp:Label>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="DropDownList form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem>monthly</asp:ListItem>
                            <asp:ListItem>weekly</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

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
        </div>  <%--Ends middleDiv--%>
    </div>  <%--Ends wrapper Div--%>

    <br />

    <footer>
        <p>&copy; 2018 - Qamar Raja. The accuracy of this calculator cannot be guaranteed, and it should not be relied on to make financial decisions.
             Data for the base rent for a one bedroom house for the various boroughs was obtained from the Valuation Office Agency. </p>
    </footer>

    
</body>

</html>