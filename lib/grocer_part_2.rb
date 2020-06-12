require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  coupons.each do |element|
    cart_item = find_item_by_name_in_collection(element[:item], cart)
    couponed_item_name = "#{element[:item} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(coupon_item_name, cart)
    if cart_item && cart_item[:count] >= element[:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += element[:num]
        cart_item[:count] -= element[:num]
        
      else 
        cart_item_with_coupon = {
          :item => couponed_item_name.
          :price => element[:cost] / element[:num],
          :count => element[:num],
          :clearance => cart_item[:clearance]
        }
        cart << cart_item_with_coupon
        cart_item[:count] -= 
      end
    end
  end
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
