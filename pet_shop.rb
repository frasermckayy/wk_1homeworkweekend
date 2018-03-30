def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, num)
  return pet_shop[:admin][:total_cash] += num
  return pet_shop[:admin][:total_cash] -= num
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, pets_sold)
  return pet_shop[:admin][:pets_sold] += pets_sold

end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, pet_breed)
  pets = []
  for pets_in_shop in pet_shop[:pets]
    if pets_in_shop[:breed] == pet_breed
      pets.push(pets_in_shop)
    end
  end
  return pets
end

def find_pet_by_name(pet_shop, pet_name)
  for each_pet in pet_shop[:pets]
    if each_pet[:name] == pet_name
      return each_pet
    end
  end
end
