Deface::Override.new(
   :virtual_path  => "spree/orders/_form",
   :replace => "table#cart-detail",
   :text => "<table id='cart-detail' data-hook>
  <thead>
    <tr data-hook='cart_items_headers'>
      <th class='cart-item-description-header' colspan='2'><%= Spree.t(:item) %></th>
      <th class='cart-item-price-header'><%= Spree.t(:total_price) %></th>
      <th class='cart-item-delete-header'></th>
    </tr>
  </thead>
  <tbody id='line_items' data-hook>
    <%= order_form.fields_for :line_items do |item_form| %>
      <%= render :partial => 'line_item', :locals => { :variant => item_form.object.variant, :line_item => item_form.object, :item_form => item_form } %>
    <% end %>
  </tbody>
  <%= render 'spree/orders/adjustments' unless @order.adjustments.eligible.blank? %> </table>",
  :name => "checkout_form")
