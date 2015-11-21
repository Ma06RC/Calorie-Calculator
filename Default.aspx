<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CalorieCounter</title>
    <style type="text/css">
        .newStyle1 {
            background-color: #6699FF;
        }
        .auto-style1 {
            color: #FF0000;
        }
        .auto-style2 {
            width: 322px;
            font-weight: 700;
            color: #000000;
            text-align: center;
            font-size: medium;
        }
        .auto-style3 {
            width: 322px;
            font-weight: 700;
            color: #000000;
            text-align: center;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style6 {
            width: 322px;
            font-weight: 700;
            color: #000000;
            text-align: center;
            font-size: medium;
            height: 9px;
        }
        .auto-style7 {
            height: 9px;
        }
        .auto-style8 {
            width: 322px;
            font-weight: 700;
            color: #000000;
            text-align: center;
            font-size: medium;
            height: 37px;
        }
        .auto-style9 {
            height: 37px;
        }
        .auto-style11 {
            width: 299px;
            color: #FF0000;
            text-align: center;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style10 {
            width: 299px;
            font-size: medium;
            text-align: center;
        }
        .auto-style14 {
            font-size: xx-small;
        }
        .auto-style15 {
            background-color: #FFFFFF;
        }
        </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">
    <div style="font-weight: 700; font-size: xx-large">
    
        <h1 style="color: #FF5050; margin-left: 160px;">
            <span class="auto-style1">&nbsp;&nbsp;&nbsp; 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/calorie logo.jpg" Height="155px" Width="271px" />
            <em style="text-align: center">&nbsp;Calorie Counter</em></span></h1>
        <p style="color: #000000; margin-left: 160px; font-size: medium; font-style: italic;">
            Weight loss, weight gain, and weight maintenance are the three different types of Weight Control. You can achieve one of these type of weight control by Calorie Counting. This will help you to control your weight that allows you to loss, gain or maintain your weight. To become in control of your weight is by controlling your diet. To control your diet is bye controlling your calories, which is the purpose of this website. Visit this website for additional inforamtion about health and nutrition:
            <asp:LinkButton ID="additionalLinkButton" runat="server" OnClick="additionalLinkButton_Click" ToolTip="Additional Health Link">nutritiondata.self.com</asp:LinkButton>
        </p>
        <p style="color: #000000; margin-left: 160px; font-size: medium; font-style: italic;">
            &nbsp;</p>
    
    </div>
        <table style="margin:auto;">
            <tr>
                <td class="auto-style2" style="color: #FF0000; font-weight: 700; font-size: medium; text-align: center">
                    <h3 class="auto-style5">Calculating Calories:</h3>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h4 class="auto-style5">Calculate Basal Metabloic Rate (BMR):</h4>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <ul>
                        <li style="height: 15px; width: 191px">Name</li>
                    </ul>
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" ToolTip="Enter Your Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li style="height: 18px; width: 179px">Age</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="ageTextBox" runat="server" ToolTip="Enter Your Age"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li style="width: 227px">Height(cm)</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="heightTextBox" runat="server" ToolTip="Enter Your Height"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li style="height: 21px; width: 230px">Weight(kg)</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="weightTextBox" runat="server" ToolTip="Enter Your Weight"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li style="width: 207px">Gender</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="genderDropDownList" runat="server" ToolTip="Choose Your Gender">
                        <asp:ListItem Value="male">Male</asp:ListItem>
                        <asp:ListItem Value="female">Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <ul>
                        <li style="width: 227px; height: 18px">Level of Daily Exercise</li>
                    </ul>
                </td>
                <td class="auto-style9">
                    <asp:RadioButtonList ID="activityRadioButtonList" runat="server" ToolTip="Choose Your Level of Excercise">
                        <asp:ListItem Value="noActivity">No Activity</asp:ListItem>
                        <asp:ListItem Value="lightActivity">Light Activity</asp:ListItem>
                        <asp:ListItem Value="moderateActivity">Moderate Activity</asp:ListItem>
                        <asp:ListItem Value="strongActivity">Strong Activity</asp:ListItem>
                        <asp:ListItem Value="intenseActivity">Intense Activity</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li style="width: 274px">Consumed Calories for the day</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="consumedCalTextBox" runat="server" ToolTip="Enter How Much Calories Consumed Today"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="calculate" runat="server" Text="Calculate" OnClick="calculate_Click" BackColor="Red" ToolTip="Calculate Your BMR, Suggested Calorie Intake and Your Weight Verdict" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li style="width: 202px">BMR:</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="bmrLabel" runat="server" Text="0" ToolTip="Your BMR Level"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li style="height: 16px; width: 239px">Suggested Calorie Intake</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="calorieIntakeLabel" runat="server" Text="0" ToolTip="Our Suggested Calorie Intake for You"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li>Weight Verdict</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="weightVerdictLabel" runat="server" Text="0" ToolTip="Your Weight Verdict"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <ul>
                        <li>Weight Verdict Image</li>
                    </ul>
                </td>
                <td class="auto-style7">
                    <asp:Image ID="weightVerdictImage" runat="server" Height="237px" Width="239px" ImageUrl="~/default.gif" ToolTip="Your Weight Verdict Image" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="clearButton" runat="server" OnClick="clearButton_Click" Text="Clear" BackColor="Red" ToolTip="Clear All the Fields" />
                </td>
            </tr>
            </table>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table style="margin:auto;">
        <tr>
            <td class="auto-style11" style="font-weight: 700; font-size: medium">About SweetAs Healthcare:</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Consultant:</td>
            <td class="auto-style13">Dr. Marc Laroza</td>
        </tr>
        <tr>
            <td class="auto-style10">SweeAs Healthcare Address:</td>
            <td class="auto-style13">77 Hobart st., Miramar, Wellington City</td>
        </tr>
        <tr>
            <td class="auto-style10">E-mail Address:</td>
            <td class="auto-style13">sweetAs_Healthcare@healthcare.com</td>
        </tr>
        <tr>
            <td class="auto-style10">Contact Details:</td>
            <td class="auto-style13">04-782-5192</td>
        </tr>
    </table>
    <p style="text-align: center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14" style="color: rgb(113, 113, 113); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(214, 214, 214);"><strong><span class="auto-style15">Copyrightht © 2014 SweetAs Healthcare Inc. All Rights Reserved.</span></strong></span></p>
</body>
</html>
