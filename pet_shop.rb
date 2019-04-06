def pet_shop_name(pet_shop)
  return pet_shop[:name]
end
# Accessing the name location of @pet_shop

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
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
  pet_shop[:pets].length
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
    true
  else
    false
  end
end
