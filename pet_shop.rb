def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

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
    p pet
    if pet[:breed] == pet_breed
      pet_breed_count.push(pet)
    end
  end
  return pet_breed_count

end
