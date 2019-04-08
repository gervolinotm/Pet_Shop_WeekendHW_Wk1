def pet_shop_name(pet_shop)
  return pet_shop[:name]
end
# Accessing the name location of @pet_shop

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash] #Make changes to code, return pet_shop[:admin][:total_cash] only returns the value in @pet_shop but not the changes.
end
# Acessing the location of total_cash in @pet_shop

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end
# Acessing total_cash and giving it the method (+=) where it would make changes to the total_cash based on the amount(-10 or 10).

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_sales)
  pet_shop[:admin][:pets_sold] += number_of_sales
end

def stock_count(pet_shop)
  return pet_shop[:pets].count #Understand differences between .length and .count. .count seems have more flexibility and specificity when used.
end

def pets_by_breed(pet_shop, pet_breed)
  pet_breed_count = []
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_breed
      pet_breed_count.push(pet)
    end
  end
  return pet_breed_count
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

# def customer_cash(customers, customer_name)
#   for customer in customers
#     if customer[:name] == customer_name
#       return customer[:cash]
#     end
#   end
# end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash_spent)
  customer[:cash] -= cash_spent
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, find_pet_by_name, customer)
  if find_pet_by_name #If the pet can be found then the customer would have the option to purchase that pet. If find_pet_by_name is true.
    if customer[:cash] >= find_pet_by_name[:price] #If the customer has more than or equal to price of the pet then he would be able to purchase that particular pet.
      customer[:cash] -= find_pet_by_name[:price] #Removing the amount of cash that the pet cost from customer's cash total.
      pet_shop[:admin][:total_cash] += find_pet_by_name[:price] #Adding cash used to purchase pet to pet shop cash total.

      customer[:pets] << find_pet_by_name #Add pet to customer's pet array
      customer_pet_count = customer[:pets].count #No. of pets customer has.
      pet_shop[:pets].delete(find_pet_by_name) #Remove pet from pet shop :pet array

      number_of_sales = customer_pet_count

      pets_sold = pet_shop[:admin][:pets_sold] += number_of_sales
      return pets_sold

    else customer[:cash] <= find_pet_by_name[:price] #If customer does not have enough cash in hand, customer will not be able to purchase pet
      return "Insufficient Funds!"
    end
    return "Pet not found!"
  end
end

# def sell_pet_to_customer(pet_shop, find_pet_by_name, customer)
#
# pet_price = find_pet_by_name[:price]
#
#   if find_pet_by_name
#
#     if customer_cash(customer) >= pet_price
#       customer_cash(customer) -= pet_price
#       total_cash(pet_shop) += pet_price
#
#       customer[:pets] << find_pet_by_name
#       customer_pet_count = customer[:pets].count
#       remove_pet_by_name(pet_shop, find_pet_by_name)
#
#       increase_pets_sold(pet_shop, 1)
#
#     else customer_cash(customer) <= pet_price
#
#       return "Insufficient Funds!"
#
#     end
#     return "Pet not found!"
#   end
# end

# def sell_pet_to_customer(pet_shop, find_pet_by_name, customer)
#   customer_can_afford_pet(customer, find_pet_by_name)
#   remove_customer_cash(customer, find_pet_by_name[:price])
#   add_or_remove_cash(pet_shop, find_pet_by_name[:price])
#   return total_cash(pet_shop)
#
#   add_pet_to_customer(customer, find_pet_by_name)
#   remove_pet_by_name(pet_shop, find_pet_by_name)
#   customer_pet_count(customer)
#
#   increase_pets_sold(pet_shop, customer[:pets].count)
#   return pets_sold(pet_shop)
# end
