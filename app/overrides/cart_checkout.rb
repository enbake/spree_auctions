Deface::Override.new(
    :virtual_path  => "spree/orders/edit",
    :replace => "div.container",
    :text  => "<div class='container'>
       <% @body_id = 'cart' %>
  <div class='row margin-bottom-40'>
    <div class='col-md-12 col-sm-12'>
        <div class='panel-group checkout-page accordion scrollable' id='checkout-page'>  
        <h1><%= Spree.t(:shopping_cart) %></h1>
  
        <% if @order.line_items.empty? %>
  
    <div data-hook='empty_cart'>
      <p><%= Spree.t(:your_cart_is_empty) %></p>
      <p><%= link_to Spree.t(:continue_shopping), products_path, :class => 'button continue' %></p>
    </div>
  <% else %>
   <div id='confirm-content' class='panel-collapse collapse in' aria-expanded='true'>
            <div class='panel-body row'>
              <div class='col-md-12 clearfix'>
                <div class='table-wrapper-responsive'>
      <%= form_for @order, :url => update_cart_path, :html => {:id => 'update-cart'} do |order_form| %>
        
            <%= render :partial => 'form', :locals => { :order_form => order_form } %>
          <br>
            <%= button_tag :class => 'btn btn-primary pull-left', :id => 'checkout-link', :name => 'checkout' do %>
              <%= Spree.t(:checkout) %>
            <% end %>
      <% end %>
    </div>
          </div>
        </div>
        </div>
  <% end %>
  </div>
    </div>
  </div>
</div>",
    :name => "cart_checkout")