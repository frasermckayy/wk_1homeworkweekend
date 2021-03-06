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

 #fine up until here. Started to panic when I had to write out longer pieces of code


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
  return nil
end


def remove_pet_by_name(pet_shop, pet_name)
  for each_pet in pet_shop[:pets]
    if each_pet[:name] == pet_name
    each_pet.delete(:name)
   end
  end
end
#this one was surprisingly fine because I knew I wanted to use the .delete() method

def add_pet_to_stock(pet_shop, new_pet)
   pet_shop[:pets].push(:new_pet)
end

def add_pet_to_customer(customers, new_pet)
 customers[:pets].push(new_pet)
end


def customer_pet_count(customers)
   for customer in customers
     return customers[:pets].length
   end
end


def customer_can_afford_pet(customers, new_pet)
  return customers[:cash] < new_pet[:price] ? false : true
end

#general thoughts: I still need to wrap my head around all of the coding concepts.
#understanding what each "thing" does is what I struggle with.
#Going over all the notes helpes me loads. Feel like I need to do multiple
#amounts of the same code to fully understand the concept.
#taking breaks is hard for me because im so stubborn when I can't get something to work.
#get scared when others race ahead and I feel like im just going at a pace to keep up with everyone else
#just managing to get the basic code down never mind the refactored code or the "simpler" verisons


def sell_pet_to_customer(pet_shop, pet, customer)
 add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop, 1)
  add_or_remove_cash(pet_shop, pet[:price])
end
