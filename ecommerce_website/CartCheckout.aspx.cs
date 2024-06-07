using ecommerce_website.publicSite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace ecommerce_website
{
    public partial class CartCheckout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartData();
            //PopulateIndianStates();

            //PopulateIndianCities("Maharashtra");
        }

        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            // Your logic here
            // For example, call BindCartData method
            BindCartData();
        }

     
        private void BindCartData()
        {
            // Check if the session is created
            if (Session["Cart"] != null)
            {
                var cart = Session["Cart"] as List<CartItem>;
                if (cart != null && cart.Count > 0)
                {
                    CartSizeLabel.Text = $" {cart.Count}";
                    // Update Label1 with the total count of items in the cart
                   // Label1.Text = $"Total Items in Cart: {cart.Count}";

                    // Calculate the total amount
                    decimal totalAmount = 0;
                    foreach (var item in cart)
                    {
                        totalAmount += item.Price * item.Quantity;
                    }

                    // Bind the cart items to the Repeater control
                    rptCart.DataSource = cart;
                    rptCart.DataBind();

                    // Set the total amount in the Label control
                    lblTotalAmount.Text = "₹ " +totalAmount.ToString("N2");
                }
                else
                {
                    // If the cart is empty, display an appropriate message
                   // Label1.Text = "Your cart is empty.";

                    // Clear the Repeater control
                    rptCart.DataSource = null;
                    rptCart.DataBind();

                    // Clear the total amount
                    lblTotalAmount.Text = "0.00";

                }
            }
            else
            {
                // If the session is not created, display an appropriate message
              //  Label1.Text = "Cart session is not created.";

                // Clear the Repeater control
                rptCart.DataSource = null;
                rptCart.DataBind();

                // Clear the total amount
                lblTotalAmount.Text = "0.00";
            }
        }

        //protected void btnContinueCheckout_Click(object sender, EventArgs e)
        //{

        //    Label1.Text = "working";
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
          
        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // on button click save to dab
           // Response.Redirect("Default.aspx");


            foreach (var record in (List<CartItem>)Session["Cart"])
            {
                DAL.customerOrder Order = new DAL.customerOrder();
                Order.Name = record.Name;
                Order.Address = record.Address;
                Order.Logo = record.Logo;
                Order.Text = record.Text;
                Order.Tshirt = record.Tshirt;
                Order.UserId = record.UserId;
                Order.Size = record.Size;
                Order.Quantity = record.Quantity;
                Order.price = record.Quantity * record.Price; // Assuming the price is fixed at 350 for each item

                if (Order.Insert())
                {

                    // lblMessage.Text = "Order Successfully!";
                    // lblMessage.ForeColor = System.Drawing.Color.Green;

                }
                else
                {
                    // lblMessage.Text = Order.Error;
                    // lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            // Clear the session["Cart"] 
            Session["Cart"] = new List<CartItem>();
            Response.Redirect("Default.aspx");
        }


        //private void PopulateIndianStates()
        //{
        //    // Define a static list of Indian states
        //    List<string> indianStates = new List<string>
        //{
        //    "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat",
        //    "Haryana", "Himachal Pradesh", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra",
        //    "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim",
        //    "Tamil Nadu", "Telangana", "Tripura", "Uttar Pradesh", "Uttarakhand", "West Bengal"
        //};

        //    // Bind Indian states to the dropdown
        //    stateDropDown.DataSource = indianStates;
        //    stateDropDown.DataBind();

        //    // Add a default option
        //    stateDropDown.Items.Insert(0, new ListItem("Choose...", ""));
        //}

        //protected void stateDropDown_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    // When the state selection changes, populate cities based on the selected state
        //    string selectedState = stateDropDown.SelectedValue;
        //    PopulateIndianCities(selectedState);
        //}

        //private void PopulateIndianCities(string state)
        //{
        //    // Define a static dictionary of Indian cities by state
        //    Dictionary<string, List<string>> indianCities = new Dictionary<string, List<string>>
        //        {
        //            { "Andhra Pradesh", new List<string> { "Visakhapatnam", "Vijayawada", "Guntur", "Nellore", "Kurnool", "Rajahmundry" } },
        //            { "Maharashtra", new List<string> { "Mumbai", "Pune", "Nagpur", "Nashik", "Aurangabad", "Solapur" } },
        //       { "Arunachal Pradesh", new List<string> { "Itanagar", "Naharlagun", "Pasighat", "Daporijo", "Ziro", "Tezu" } },
        //        { "Assam", new List<string> { "Guwahati", "Silchar", "Dibrugarh", "Jorhat", "Nagaon", "Tezpur" } },
        //        { "Bihar", new List<string> { "Patna", "Gaya", "Bhagalpur", "Muzaffarpur", "Purnia", "Darbhanga" } },
        //        { "Chhattisgarh", new List<string> { "Raipur", "Bhilai", "Bilaspur", "Korba", "Raigarh", "Durg" } },
        //        { "Goa", new List<string> { "Panaji", "Margao", "Vasco da Gama", "Ponda", "Mapusa", "Bicholim" } },
        //        { "Gujarat", new List<string> { "Ahmedabad", "Surat", "Vadodara", "Rajkot", "Bhavnagar", "Jamnagar" } },
        //        { "Haryana", new List<string> { "Chandigarh", "Faridabad", "Gurgaon", "Hisar", "Panipat", "Ambala" } },
        //        { "Himachal Pradesh", new List<string> { "Shimla", "Mandi", "Dharamshala", "Solan", "Palampur", "Una" } },
        //        { "Jharkhand", new List<string> { "Ranchi", "Jamshedpur", "Dhanbad", "Bokaro Steel City", "Deoghar", "Hazaribagh" } },
    
        //        };

        //    // Get the list of cities for the selected state
        //    List<string> cities = indianCities.ContainsKey(state) ? indianCities[state] : new List<string>();

        //    // Bind cities to the dropdown
        //    cityDropDown.DataSource = cities;
        //    cityDropDown.DataBind();

        //    // Add a default option
        //    cityDropDown.Items.Insert(0, new ListItem("Choose...", ""));
        //}
    }
   
    
}