def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
i = 0 
while i < collection.length do 
    if collection[i][:item] == name
     target = collection[i]
  else
    nil 
  end 
  i += 1 
end 
target
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

array = []
i = 0 
while i < cart.length do 
  item = find_item_by_name_in_collection(cart[i][:item], array)
  if item != nil 
    item[:count] += 1 
  else 
    cart[i][:count] = 1 
    array << cart[i] 
  end 
  i += 1 
end 
array
end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
i = 0 
while i < coupons.length do 
  item = find_item_by_name_in_collection(coupons[i][:item], cart)
  couponed_item = "#{coupons[i][:item]} W/COUPON"
  item_coupon = find_item_by_name_in_collection(couponed_item, cart)
  if item && item[:count] >= coupons[i][:num]
    if item_coupon
      item_coupon[:count] += coupons[i][:num]
      item[:count] -= coupons[i][:num]
    else 
      item_coupon = {
        :item => couponed_item,
        :price => coupons[i][:cost] / coupons[i][:num],
        :count => coupons[i][:num], 
        :clearance => item[:clearance]
      }
      cart << item_coupon
      item[:count] -= coupons[i][:num]
    end 
  end 
  i += 1 
end 
cart 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  while i < cart.length do 
    if cart[i][:clearance]
      cart[i][:price] = (cart[i][:price] - (cart[i][:price] * 0.20)).round(2)
    end 
    i += 1
  end 
cart 
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