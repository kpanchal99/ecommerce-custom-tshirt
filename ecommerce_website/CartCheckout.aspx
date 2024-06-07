<%@ Page  Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="CartCheckout.aspx.cs" Inherits="ecommerce_website.CartCheckout" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    .container {
      max-width: 960px;
    }

    .lh-condensed { line-height: 1.25; }
</style>


    <div class="container">
    <div class="py-5 text-center">
        <h2>Checkout Page</h2>
    </div>
    <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Your cart</span>
            <asp:Label ID="CartSizeLabel" runat="server" CssClass="badge badge-secondary badge-pill" Text="0"></asp:Label>
            </h4>
          <ul class="list-group mb-3 sticky-top">
          <asp:Repeater ID="rptCart" runat="server">
        <HeaderTemplate>
           
        </HeaderTemplate>
        <ItemTemplate>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
                <div>
                    <asp:Image ID="imglode" runat="server" class="img-fluid w-100" style="height:100px;" ImageUrl='<%# Eval("Tshirt") %>' />
                </div>
                <span class="text-muted"><%# Eval("Quantity") %></span>
                <span class="text-muted">X</span>
                <span class="text-muted">₹ <%# Eval("Price") %></span>
            </li>
        </ItemTemplate>
        <FooterTemplate>
          
        </FooterTemplate>
    </asp:Repeater>
   </ul><ul class="list-group mb-3">
  <li class="list-group-item d-flex justify-content-between">
      <span>Total </span>
      <strong><asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label></strong>
  </li>
       </ul> 
        </div>


        <div class="col-md-8 order-md-1">
            <h4 class="mb-3">Billing address</h4>
           
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="firstName">First name</label>
                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                        <div class="invalid-feedback"> Valid first name is required. </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="lastName">Last name</label>
                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                        <div class="invalid-feedback"> Valid last name is required. </div>
                    </div>
                </div>
              <%--  <div class="mb-3">
                    <label for="username">Username</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" class="form-control" id="username" placeholder="Username" required="">
                        <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                    </div>
                </div>--%>
                <div class="mb-3">
                    <label for="email">Email <span class="text-muted"></span></label>
                    <input type="email" class="form-control" id="email" placeholder="you@example.com">
                    <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                </div>
                <div class="mb-3">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" placeholder="1234 Main St" >
                    <div class="invalid-feedback"> Please enter your shipping address. </div>
                </div>
                <div class="mb-3">
                    <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
                    <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                </div>
                <div class="row">
                  <%--  <div class="col-md-5 mb-3">
                        <label for="state">State</label>
                        <select class="custom-select d-block w-100" id="state" required="">
                            <option value="">Choose...</option>
                            <option>Maharashtra</option>
                        </select>
                        <div class="invalid-feedback"> Please select a valid satte. </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="city">city</label>
                        <select class="custom-select d-block w-100" id="city" required="">
                            <option value="">Choose...</option>
                            <option>Mumbai</option>
                            <option>Mumbai</option>
                            <option>Mumbai</option>
                            <option>Mumbai</option>
                            <option>Mumbai</option>
                            <option>Mumbai</option>
                            <option>Mumbai</option>
                            <option>Mumbai</option>

                        </select>
                        <div class="invalid-feedback"> Please provide a valid city. </div>
                    </div>--%>


                    <div class="col-md-3 mb-3">
                        <label for="zip">Zip</label>
                        <input type="text" class="form-control" id="zip" placeholder="" required="">
                        <div class="invalid-feedback"> Zip code required. </div>
                    </div>
                </div>
                <hr class="mb-4">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="same-address">
                    <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="save-info">
                    <label class="custom-control-label" for="save-info">Save this information for next time</label>
                </div>
                <hr class="mb-4">
                <h4 class="mb-3">Payment</h4>
                <div class="d-block my-3">
                    <div class="custom-control custom-radio">
                        <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked="" required="">
                        <label class="custom-control-label" for="credit">Credit card</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required="">
                        <label class="custom-control-label" for="debit">Debit card</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required="">
                        <label class="custom-control-label" for="paypal">PayPal</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="cc-name">Name on card</label>
                        <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                        <small class="text-muted">Full name as displayed on card</small>
                        <div class="invalid-feedback"> Name on card is required </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="cc-number">Credit card number</label>
                        <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                        <div class="invalid-feedback"> Credit card number is required </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <label for="cc-expiration">Expiration</label>
                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                        <div class="invalid-feedback"> Expiration date required </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="cc-cvv">CVV</label>
                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                        <div class="invalid-feedback"> Security code required </div>
                    </div>
                </div>
                
                <hr class="mb-4">
                
           <%-- <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:Button ID="btnContinueCheckout" runat="server" CssClass="btn btn-primary btn-lg btn-block" Text="Continue to checkout" OnClick="btnContinueCheckout_Click" >/--%>
            
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
            
        </div>
    </div>

</div>

 
    
</asp:Content>
