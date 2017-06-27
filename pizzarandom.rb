def crust
	crust_choice = ['Thin', 'Hand_Tossed', 'Pretzel', 'Cheese_Stuffed'].sample
end

def pizza
	puts """What you're getting on your pizza:
	CRUST: #{crust}
	SAUCE: #{sauce}
	MEAT: #{meat}
	CHEESE: #{cheese}
	VEGGIE: #{veggie}
	SPECIAL: #{special}
	"""
	puts """And for you side:
	#{side}
	"""
	puts """And your drink:
	#{drink}
	"""
end

def meat
	meat_choice = ['Pepperoni', 'Roadkill', 'Bacon', 'Steak', 'Chicken', 'None', 'Shark', 'Turkey', 'Rattlesnake', 'Elk', 'Venison'].sample
end

def cheese
	cheese_choice = ['Mozzarella', 'Cheddar', 'Colby', 'Edam', 'Provolone', 'None', 'Swiss', 'Feta', 'Brie', 'American', 'Parmesan', 'Asiago', 'Monterey_Jack'].sample
end

def veggie
	veggie_choice = ['Asparagus', 'Zucchini', 'Mushrooms', 'Olives', 'None', 'Carrots', 'Cucumber', 'Tomato', 'Squash', 'Eggplant'].sample
end

def sauce
	sauce_choice = ['Marinara', 'Alfredo', 'Bechamel', 'Tapenade', 'BBQ', 'Hummus', 'None', 'Pumpkin'].sample
end

def special
	special_choice = ['Egg', 'None', 'Chocolate_Drizzle', 'Mini_Pizzas'].sample
end

def side
	side1_choice = ['Cheese_Sticks', 'Brownies', "Salad", 'Bread_Sticks'].sample
end

def drink
	drink_choice = ['Water', 'Pepsi', 'Mountain_Dew', 'Diet_Pepsi', 'Fanta_Orange', 'Fanta_Grape', 'Cherry_Pepsi', 'Dr_Pepper', '7_UP'].sample
end

puts "How many pizzas do you want?"
pizza_count = gets.chomp.to_i
cash = pizza_count * 15

x = 1
pizza_count.times do
	x += 1
	pizza
end
puts "Your total for this order is $#{cash}."