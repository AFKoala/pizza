def crust
	puts """What kind of crust would you like?
	Thin
	Hand_Tossed
	Pretzel
	Cheese_Stuffed
	"""
	crust_choice = gets.chomp
end

def order
	puts """How many pizzas would you like?
	1
	2
	3
	4
	5
	"""
	receipt = gets.chomp.to_i

	if receipt == 1
		puts "So you want a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies."
	elsif receipt == 2
		puts "So you want a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies \nand a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies"
	elsif receipt == 3
		puts "So you want a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \na pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \nand a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies."		
	elsif receipt == 4
		puts "So you want a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \na pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \na pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \nand a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies."
	elsif receipt == 5
		puts "So you want a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \na pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \na pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \na pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies, \n and a pizza with #{crust} crust, #{sauce}, #{meat}, #{cheese} cheese, and #{veggie} veggies."
	else
		puts "No pizzas?! Why are you even here?"
	end
end

def meat
	puts """What kind of meat would you like?
	Pepperoni
	Bacon
	Steak
	Chicken
	No
	"""
	meat_choice = gets.chomp
end

def cheese
	puts """What kind of cheese would you like?
	Mozzarella
	Cheddar
	Colby
	Edam
	Provolone
	"""
	cheese_choice = gets.chomp
end

def veggie
	puts """What kind of veggies would you like?
	Asparagus
	Zucchini
	Mushrooms
	Olives
	No
	"""
	veggie_choice = gets.chomp
end

def sauce
	puts """What kind of sauce would you like?
	Marinara
	Bechamel
	Tapenade
	BBQ
	Hummus
	Pumpki
	No
	"""
	sauce_choice = gets.chomp
end

order