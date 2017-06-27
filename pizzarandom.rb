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
	"""
end

def meat
	meat_choice = ['Pepperoni', 'Bacon', 'Steak', 'Chicken', 'No'].sample
end

def cheese
	cheese_choice = ['Mozzarella', 'Cheddar', 'Colby', 'Edam', 'Provolone', 'No'].sample
end

def veggie
	veggie_choice = ['Asparagus', 'Zucchini', 'Mushrooms', 'Olives', 'No'].sample
end

def sauce
	sauce_choice = ['Marinara', 'Bechamel', 'Tapenade', 'BBQ', 'Hummus', 'No', 'Pumpkin'].sample
end

puts "How many pizzas do you want?"
pizza_count = gets.chomp.to_i
cash = pizza_count * 10

x = 1
pizza_count.times do
	x += 1
	pizza
	puts "Your total for this order is $#{cash}."
end