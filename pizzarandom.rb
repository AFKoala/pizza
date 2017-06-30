def crust
	crust_choice = ['Thin', 'Hand_Tossed', 'Pretzel', 'Cheese_Stuffed'].sample
end

def pizza(x)
	puts """What you're getting on your Pizza #{x} (#{size}):
	CRUST: #{crust}
	SAUCE: #{sauce}
	MEAT: #{meat}
	CHEESE: #{cheese}
	VEGGIE: #{veggie}
	SPECIAL: #{special}
	"""
	puts """And for your side:
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

def size
	pizza_size = ['Small', 'Medium', 'Large', 'Extra_Large'].sample
end

def sizeprice
	if size == 'Small'
		price = 6
	elsif size == 'Medium'
		price = 8
	elsif size == 'Large'
		price = 10
	elsif size == 'Extra_Large'
		price = 12
	else
	end
end

time = rand(1..60)
puts "Is this for delivery? (y/n)"
delivery = gets.chomp
puts "How many pizzas do you want?"
pizza_count = gets.chomp.to_i
total = (pizza_count.to_i * sizeprice.to_i) + ((pizza_count.to_i * sizeprice.to_i) * 0.06)
delivery_charge = 3
tip = total * 0.20
delivery_total_tip = (((pizza_count.to_i * sizeprice.to_i) + delivery_charge.to_i) + (((pizza_count.to_i * sizeprice.to_i) + delivery_charge.to_i) * 0.06) + tip).round(2)
delivery_total = (((pizza_count.to_i * sizeprice.to_i) + delivery_charge.to_i) + (((pizza_count.to_i * sizeprice.to_i) + delivery_charge.to_i) * 0.06)).round(2)

if delivery ==  'y'
	if time < 30
		x = 0
		pizza_count.times do
			x += 1
			pizza(x)
		end
		puts "Your total for this order is #{delivery_total_tip}."
	else
		x = 0
		pizza_count.times do
			x += 1
			pizza(x)
		end
		puts "Your total for this order is #{delivery_total}."
	end
else
	x = 0
	pizza_count.times do
		x += 1
		pizza(x)
	end
	puts "Your total for this order is #{total}."
end