using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string[,] boroughsArray1 = { { "Kensington & Chelsea", "2037" }, { "Westminster", "1950" }, { "City of London", "1733" }, { "Camden", "1582" }, { "Islington", "1517" }, { "Hammersmith and Fulham", "1383" }, { "Hackney", "1430" }, { "Tower Hamlets", "1430" }, { "Wandsworth", "1387" }, { "Southwark", "1278" }, { "Lambeth", "1343" }, { "Richmond upon Thames", "1200" }, { "Barnet", "1101" }, { "Merton", "1175" }, { "Brent", "1200" }, { "Hounslow", "1248" }, { "Haringey", "1235" }, { "Ealing", "1200" }, { "Kingston upon Thames", "1070" }, { "Greenwich", "1050" }, { "Lewisham", "1050" }, { "Harrow", "1000" }, { "Waltham Forest", "1000" }, { "Enfield", "950" }, { "Redbridge", "900" }, { "Hillingdon", "900" }, { "Bromley", "900" }, { "Barking & Dagenham", "850" }, { "Croydon", "875" }, { "Sutton", "875" }, { "Havering", "800" }, { "Bexley", "750" } };
    string[,] boroughsArray2 = { { "Kensington & Chelsea", "3012" }, { "Westminster", "2600" }, { "City of London", "2459" }, { "Camden", "2080" }, { "Islington", "1950" }, { "Hammersmith and Fulham", "1798" }, { "Hackney", "1798" }, { "Tower Hamlets", "1750" }, { "Wandsworth", "1700" }, { "Southwark", "1560" }, { "Lambeth", "1600" }, { "Richmond upon Thames", "1550" }, { "Barnet", "1400" }, { "Merton", "1425" }, { "Brent", "1500" }, { "Hounslow", "1550" }, { "Haringey", "1495" }, { "Ealing", "1452" }, { "Kingston upon Thames", "1350" }, { "Greenwich", "1290" }, { "Lewisham", "1300" }, { "Harrow", "1295" }, { "Waltham Forest", "1250" }, { "Enfield", "1250" }, { "Redbridge", "1200" }, { "Hillingdon", "1200" }, { "Bromley", "1200" }, { "Barking & Dagenham", "1100" }, { "Croydon", "1150" }, { "Sutton", "1150" }, { "Havering", "1000" }, { "Bexley", "1000" } };
    string[,] boroughsArray3 = { { "Kensington & Chelsea", "4507" }, { "Westminster", "3878" }, { "City of London", "3250" }, { "Camden", "2925" }, { "Islington", "2448" }, { "Hammersmith and Fulham", "2545" }, { "Hackney", "2383" }, { "Tower Hamlets", "2210" }, { "Wandsworth", "2225" }, { "Southwark", "1900" }, { "Lambeth", "2167" }, { "Richmond upon Thames", "2098" }, { "Barnet", "1800" }, { "Merton", "1800" }, { "Brent", "1820" }, { "Hounslow", "1700" }, { "Haringey", "1879" }, { "Ealing", "1800" }, { "Kingston upon Thames", "1733" }, { "Greenwich", "1438" }, { "Lewisham", "1600" }, { "Harrow", "1600" }, { "Waltham Forest", "1500" }, { "Enfield", "1500" }, { "Redbridge", "1500" }, { "Hillingdon", "1450" }, { "Bromley", "1450" }, { "Barking & Dagenham", "1300" }, { "Croydon", "1350" }, { "Sutton", "1450" }, { "Havering", "1250" }, { "Bexley", "1250" } };
    string[,] boroughsArray4 = { { "Kensington & Chelsea", "7778" }, { "Westminster", "6283" }, { "City of London", "4200" }, { "Camden", "3683" }, { "Islington", "3098" }, { "Hammersmith and Fulham", "3683" }, { "Hackney", "3033" }, { "Tower Hamlets", "2900" }, { "Wandsworth", "3203" }, { "Southwark", "2600" }, { "Lambeth", "2950" }, { "Richmond upon Thames", "3700" }, { "Barnet", "2925" }, { "Merton", "3000" }, { "Brent", "2401" }, { "Hounslow", "2496" }, { "Haringey", "2500" }, { "Ealing", "2500" }, { "Kingston upon Thames", "2500" }, { "Greenwich", "1993" }, { "Lewisham", "2200" }, { "Harrow", "2050" }, { "Waltham Forest", "1900" }, { "Enfield", "1950" }, { "Redbridge", "1900" }, { "Hillingdon", "1850" }, { "Bromley", "2000" }, { "Barking & Dagenham", "1650" }, { "Croydon", "1825" }, { "Sutton", "1900" }, { "Havering", "1600" }, { "Bexley", "1550" } };


    protected void Page_Load(object sender, EventArgs e)
    {
        //RequiredFieldValidatorBedrooms.Visible = false;

        if (!Page.IsPostBack)
        {
            List<string> list = new List<string>()
         {  
            boroughsArray1[0,0], boroughsArray1[1,0], boroughsArray1[2,0], boroughsArray1[3,0], boroughsArray1[4,0], boroughsArray1[5,0], boroughsArray1[6,0], boroughsArray1[7,0], boroughsArray1[8,0], boroughsArray1[9,0], boroughsArray1[10,0], boroughsArray1[11,0], boroughsArray1[12,0], boroughsArray1[13,0], boroughsArray1[14,0], boroughsArray1[15,0], boroughsArray1[16,0], boroughsArray1[17,0], boroughsArray1[18,0], boroughsArray1[19,0], boroughsArray1[20,0], boroughsArray1[21,0], boroughsArray1[22,0], boroughsArray1[23,0], boroughsArray1[24,0], boroughsArray1[25,0], boroughsArray1[26,0], boroughsArray1[27,0], boroughsArray1[28,0], boroughsArray1[29,0], boroughsArray1[30,0], boroughsArray1[31,0],
         }; 

            //The following method is used to display the first column from boroughsArray1 into DropDownList1.
            list.Sort();
            DropDownList1.DataSource = list;
            DropDownList1.DataBind();
        }
        
    }



    protected void ButtonDisplayRent_Click(object sender, EventArgs e)
    {
        double rentC = 0d; //rentC is intermediate rent after taking into account the borough in which the house is situated & no. of bedrooms it contains.
        double rentD = 0d; //rentD is intermediate rent after taking into account the distance + above
        double rentHI = 0d; //rentHI is intermediate rent after taking into account the household income + above
        double rentF = 0d; //rentF is intermediate rent changing depending if user chooses monthly or weekly display
        int bedrooms = 0; //Initialising value
        bedrooms = Convert.ToInt32(TextBoxBedrooms.Text);
        Double DistTube = 0;
        DistTube = Convert.ToDouble(TextBoxDist.Text);
        


        if (bedrooms == 1)
        { for (int i = 0; i < boroughsArray1.GetLength(0); i++)
            {
                if (boroughsArray1[i, 0] == DropDownList1.SelectedValue)
                { rentC = Convert.ToDouble(boroughsArray1[i, 1]); }   //Array[a, b] -> where a is row no. & b is column no.
            } }

        else if (bedrooms == 2)
        { for (int j = 0; j < boroughsArray2.GetLength(0); j++)
            {
                if (boroughsArray2[j, 0] == DropDownList1.SelectedValue)
                { rentC = Convert.ToDouble(boroughsArray2[j, 1]); }   
            } }

        else if (bedrooms == 3)
        { for (int k = 0; k < boroughsArray3.GetLength(0); k++)
            {
                if (boroughsArray3[k, 0] == DropDownList1.SelectedValue)
                { rentC = Convert.ToDouble(boroughsArray3[k, 1]); }  
            } }

        else if (bedrooms >= 4)
        { for (int l = 0; l < boroughsArray4.GetLength(0); l++)
            {
                if (boroughsArray4[l, 0] == DropDownList1.SelectedValue)
                { rentC = Convert.ToDouble(boroughsArray4[l, 1]); } 
            } }

        
        

                if (DistTube >= 0 && DistTube < 0.2)
                { rentD = 1.15D * rentC; }
                else if (DistTube >= 0.2 && DistTube < 0.5)
                { rentD = 1.1D * rentC; }
                else if (DistTube >= 0.5 && DistTube < 1)
                { rentD = 1.05D * rentC; }
                else
                { rentD = rentC; }
            


            if (TextBoxIncome.Text != "")
            {
                double houseIncome = 0D;
                houseIncome = Convert.ToDouble(TextBoxIncome.Text);


                if (houseIncome < 10000)
                { rentHI = 0.5D * rentD; }
                else if (houseIncome >= 10000 && houseIncome < 11000)
                { rentHI = 0.6D * rentD; }
                else if (houseIncome >= 11000 && houseIncome < 12500)
                { rentHI = 0.7D * rentD; }
                else if (houseIncome >= 12500 && houseIncome < 15000)
                { rentHI = 0.8D * rentD; }
                else if (houseIncome >= 15000 && houseIncome < 17500)
                { rentHI = 0.9D * rentD; }
                else if (houseIncome >= 17500 && houseIncome < 20000)
                { rentHI = 0.95D * rentD; }
                else if (houseIncome >= 20000)
                { rentHI = rentD; }
            }
            else { rentHI = rentD; }



            if (DropDownList2.SelectedValue == "monthly" || DropDownList2.SelectedValue == "weekly")
            {
                switch (DropDownList2.SelectedValue)
                {
                    case "monthly":
                        rentF = rentHI;
                        break;
                    case "weekly":
                        rentF = rentHI * (12D / 52D);
                        break;
                    default:
                        rentF = rentHI;
                        break;
                }
            }
        else { rentF = rentHI; }


        var result = Math.Round(rentF, 2, MidpointRounding.AwayFromZero);
        var finalRent = String.Format("{0:0.00}", result);


        DisplayRentLabel.Text = String.Format("The {4} rent for a {0} bedroom house {1} mile(s) from the tube/train station situated in {2} is: £{3}.", bedrooms, DistTube, DropDownList1.SelectedValue, finalRent, DropDownList2.SelectedValue);
        DisplayRentLabel.Visible = true;
        }




    protected void TextBoxBedrooms_TextChanged(object sender, EventArgs e)
    {
        DisplayRentLabel.Visible = false;  //Do this to make DisplayRentLabel invisible when any of the form values are changed.
    }
    
    protected void TextBoxDist_TextChanged(object sender, EventArgs e)
    {
        DisplayRentLabel.Visible = false;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DisplayRentLabel.Visible = false;
    }

    protected void TextBoxIncome_TextChanged(object sender, EventArgs e)
    {
        DisplayRentLabel.Visible = false;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DisplayRentLabel.Visible = false;
    }
}