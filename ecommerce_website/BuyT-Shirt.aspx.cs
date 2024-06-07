using ecommerce_website.publicSite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class Buy_ProductbyClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["getimg"].ToString()!="")
                {
                    imglode.ImageUrl = Session["getimg"].ToString();
                    lblprice.Text = "₹ "+Session["getprice"].ToString();
                    lblprice.Text += "/=";
                }
            }
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "1.png" + ">";
            Session["image2"] = "";
        }

        protected void ddlQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlQuantity.SelectedIndex>0)
            {
                int Total = Convert.ToInt32(Session["getprice"].ToString());
                Total *= Convert.ToInt32(ddlQuantity.SelectedValue);
                txtTotal.Text = "₹ "+Total.ToString()+" /=";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtTotal.Text == "")
            {
                lblMessage.Text = "Please Select Quantity!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (Session["role"].ToString() == "")
            {
                Session["msg"] = "You Have to Login to View this Content";
                Session["rdr1"] = "BuyT-Shirt.aspx";
                Response.Redirect("PublicLogin.aspx");
            }

            // now add to cart // session 


            var newItem = new CartItem
            {
                Id = 0,
                Name = Session["name"].ToString(),
                Address = txtAddress.Text,
                Logo = "",
                Text = "",
                Tshirt = Session["getimg"].ToString(),
                UserId = Convert.ToInt32(Session["id"]),
                Size = ddlSize.SelectedValue,
                Price = Convert.ToInt32(Session["getprice"].ToString()),
                Quantity = Convert.ToInt32(ddlQuantity.SelectedValue),

            };

            AddItemToCart(newItem);

            lblMessage.Text = "Item added to cart.";
            return;
            ///
            DAL.customerOrder Order = new DAL.customerOrder();
            Order.Name = Session["name"].ToString();
            Order.Address = txtAddress.Text;
            Order.Logo = "";
            Order.Text = "";
            Order.Tshirt = Session["getimg"].ToString();
            Order.UserId =Convert.ToInt32(Session["id"]);
            Order.Size = ddlSize.SelectedValue;
            Order.Quantity = Convert.ToInt32( ddlQuantity.SelectedValue);

            int Total = Convert.ToInt32(Session["getprice"].ToString());
            Order.price= Convert.ToInt32(ddlQuantity.SelectedValue)*Total;

            if (Order.Insert())
            {
                lblMessage.Text = "Order Successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lblMessage.Text = Order.Error;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultClient.aspx");
        }

        public void InitializeCart()
        {
            if (Session["Cart"] == null)
            {
                Session["Cart"] = new List<CartItem>();
            }
        }

        public void AddItemToCart(CartItem item)
        {
            var cart = (List<CartItem>)Session["Cart"];
            cart.Add(item);
            Session["Cart"] = cart;
        }
    }
}