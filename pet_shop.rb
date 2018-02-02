#1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#2
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#3 & 4
def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += (cash)
end

#5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#6
def increase_pets_sold(pet_shop, sold)
  return pet_shop[:admin][:pets_sold] += (sold)
end

#7
def stock_count(pet_shop)
  return pet_shop[:pets].count
end

#8
def pets_by_breed(pet_shop, breed)
pets_found = []
  for pet in pet_shop[:pets]
    if (pet[:breed] == breed)
      pets_found.push(pet)
    end
  end
  return pets_found
end

#9 & 10
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if (pet[:name] == name)
      return pet
    end
  end
  return nil
end

#11
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if (pet[:name] == name)
      pet_shop[:pets].delete(pet)
    end
  end
end

#12
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#13
def customer_pet_count(customer)
  return customer[:pets].count
end

#14
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

## OPTIONAL
#1 & 2
def customer_can_afford_pet (customer, new_pet)
  if customer[:cash] < new_pet[:price]
    return false
  else
    return true
  end
end

#Integration test
def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil
    if customer_can_afford_pet(customer, pet)
       add_pet_to_customer(customer,pet)
       increase_pets_sold(pet_shop, 1)
       add_or_remove_cash(pet_shop,pet[:price])
    end
  end
end
