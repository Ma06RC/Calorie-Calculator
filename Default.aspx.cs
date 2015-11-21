using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    protected void calculate_Click(object sender, EventArgs e)
    {
        //created varibales that are going to be update with the calculations
        decimal femaleBMR = 0;
        decimal maleBMR = 0;
        decimal activityTimesBMR = 0;
        decimal calorieNeed = 0;
        decimal needVsConsumed = 0;

        // convert the text entered into each textbox into a numerical value
        decimal age = decimal.Parse(ageTextBox.Text);
        decimal weight = decimal.Parse(weightTextBox.Text);
        decimal height = decimal.Parse(heightTextBox.Text);
        decimal calorieConsumed = decimal.Parse(consumedCalTextBox.Text);

        
        //a switch statement to determine which options was chosen either male or female
        switch (genderDropDownList.Text)
        {
            case "female":
                //calculating female BMR
                femaleBMR = 655 + ((decimal)9.6 * weight) + ((decimal)1.8 * height) - ((decimal)4.7 * age);
                bmrLabel.Text = femaleBMR.ToString();

                //an if statements to deteremine which radio button was selected for female
                if (activityRadioButtonList.SelectedValue == "noActivity")
                {
                    activityTimesBMR = femaleBMR * (decimal)0.20;
                    calorieNeed = activityTimesBMR + femaleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "lightActivity")
                {
                    activityTimesBMR = femaleBMR * (decimal)0.30;
                    calorieNeed = activityTimesBMR + femaleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "moderateActivity")
                {
                    activityTimesBMR = femaleBMR * (decimal)0.40;
                    calorieNeed = activityTimesBMR + femaleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "strongActivity")
                {
                    activityTimesBMR = femaleBMR * (decimal)0.50;
                    calorieNeed = activityTimesBMR + femaleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "intenseActivity")
                {
                    activityTimesBMR = femaleBMR * (decimal)0.60;
                    calorieNeed = activityTimesBMR + femaleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                break;

            default:
                //calculating male BMR
                maleBMR = 66 + ((decimal)13.7 * weight) + ((decimal)5 * height) - ((decimal)6.8 * age);
                bmrLabel.Text = maleBMR.ToString();

                //an if statements to deteremine which radio button was selected for male
                if (activityRadioButtonList.SelectedValue == "noActivity")
                {
                    activityTimesBMR = maleBMR * (decimal)0.20;
                    calorieNeed = activityTimesBMR + maleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "lightActivity")
                {
                    activityTimesBMR = maleBMR * (decimal)0.30;
                    calorieNeed = activityTimesBMR + maleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "moderateActivity")
                {
                    activityTimesBMR = maleBMR * (decimal)0.40;
                    calorieNeed = activityTimesBMR + maleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "strongActivity")
                {
                    activityTimesBMR = maleBMR * (decimal)0.50;
                    calorieNeed = activityTimesBMR + maleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                else if (activityRadioButtonList.SelectedValue == "intenseActivity")
                {
                    activityTimesBMR = maleBMR * (decimal)0.60;
                    calorieNeed = activityTimesBMR + maleBMR;
                    calorieIntakeLabel.Text = calorieNeed.ToString();
                }
                break;
            
        }

        //difference between calories consumed and daily calorie needs
        needVsConsumed = (calorieConsumed - calorieNeed) / (decimal)7700;
        needVsConsumed = Math.Round(needVsConsumed, 2);

        // if statements for determining whether the person gained, maintained or lost weight
        if (needVsConsumed > 0)
        {
            weightVerdictImage.ImageUrl = "gained.jpg";
            weightVerdictLabel.Text = "Gained " + needVsConsumed.ToString() + "kg";
        }
        else if (needVsConsumed < 0)
        {
            weightVerdictImage.ImageUrl = "Skinny.jpg";
            needVsConsumed = Math.Abs(needVsConsumed); //if its in negative value math.abs(x) returns a positive value
            weightVerdictLabel.Text = "Lost " + needVsConsumed.ToString() + "kg";
        }
        else
        {
            weightVerdictImage.ImageUrl = "maintained.jpg";
            weightVerdictLabel.Text = "Maintained";
        }  
    }

    //Clearing all the fields in the website or reset the fields into their default 
    protected void clearButton_Click(object sender, EventArgs e)
    {
        nameTextBox.Text = String.Empty;
        ageTextBox.Text = String.Empty;
        heightTextBox.Text = String.Empty;
        weightTextBox.Text = String.Empty;
        consumedCalTextBox.Text = String.Empty;
        bmrLabel.Text = "0";
        calorieIntakeLabel.Text = "0";
        weightVerdictLabel.Text = "0";
        activityRadioButtonList.SelectedIndex = -1;
        weightVerdictImage.ImageUrl = "default.gif";
    }
    protected void additionalLinkButton_Click(object sender, EventArgs e)
    {
       // Server.Transfer("Default.aspx");
        Response.Redirect("http://nutritiondata.self.com/");
    }
}
