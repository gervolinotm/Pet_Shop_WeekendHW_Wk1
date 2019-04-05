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
