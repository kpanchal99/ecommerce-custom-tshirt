using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website.publicSite
{
    public partial class _public : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitializeCart();
            }
        }

        public void InitializeCart()
        {
            if (Session["Cart"] == null)
            {
                Session["Cart"] = new List<CartItem>();
            }
        }
        public string loginmenu()
        {
            string s = "";
            if (Session["role"].ToString() == "")
            {
                s += "<li><a class=\"text-white\" href=\"PublicRegister.aspx\">Register</a></li>";
                s += "<li><a class=\"text-white\" href=\"PublicLogin.aspx\">Login</a></li>";
            }
            else
            {
                s += "<li><a href=\"CartCheckout.aspx\">  Cart </a></li>";
                s += "<li><a class=\"text-white\" href=\"Default.aspx\">" + Session["name"].ToString() + "</a></li>";
                s += "<li><a class=\"text-white\" href=\"PublicLogout.aspx\">Logout</a></li>";
            }
            return s;
        }

        public void AddItemToCart(CartItem item)
        {
            var cart = (List<CartItem>)Session["Cart"];
            cart.Add(item);
            Session["Cart"] = cart;
        }

        public void RemoveItemFromCart(int productId)
        {
            var cart = (List<CartItem>)Session["Cart"];
            var itemToRemove = cart.Find(item => item.Id == productId);
            if (itemToRemove != null)
            {
                cart.Remove(itemToRemove);
                Session["Cart"] = cart;
            }
        }
    }

    //public class CartItem
    //{
    //    public int Id { get; set; }
    //    public string Size { get; set; }
    //    public string tshirtName { get; set; }
    //    public string Description { get; set; }
    //    public int Price { get; set; }
    //    public int CategoryId { get; set; }
    //    public string ImageUrl { get; set; }
    //    public int Quantity { get; set; } 
    //    public string Address { get; set; } 


    //    // customize product also

    //    public string customText { get; set; }
    //    public string customTextColor { get; set; }
    //    public string customFont { get; set; }
    //    public int customFontSize { get; set; }
    //    public string customColor { get; set; }
    //    public string clipArtLogo { get; set; }
    //}
    public class CartItem
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Logo { get; set; }
        public string Text { get; set; }
        public string Tshirt { get; set; }
        public int UserId { get; set; }
        public string Size { get; set; }
        public int Quantity { get; set; }
        public int Price { get; set; }
    }

}