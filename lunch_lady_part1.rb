require 'pry'

@order = []


@main_item_1 = ['Hamburger', 4.62]
@main_item_2 = ['Salad', 12.42]
@main_item_3 = ['Hot Dog', 4.43]

@sides_item_1 = ['French Fries', 2.25]
@sides_item_2 = ['Tater Salad', 2.56]
@sides_item_3 = ['Cole Slaw', 2.21]

	def food
		@order.clear
		puts "Here's is today's menu, You get 1 Main Dish, and 2 side dishes."
		puts "What Main Dish would you like:"
		puts "1) Hamburger ($4.62)"
		puts "2) Salad ($12.42)"
		puts "3) Hot Dog ($4.43)"
		puts "4) Skip section"
		menu
	end

	def menu
		decision = gets.strip.to_i
		case decision
		when 1
			@order.push(@main_item_1)
		when 2
			@order.push(@main_item_2)
		when 3
			@order.push(@main_item_3)
		when 4
			sides_1
		else
			puts "Please type a valid number for selection"
			food
		end
		sides_1
	end

	def side_dish_menu
		puts "Please select a side dish"
		puts "1) French Fries ($2.25)"
		puts "2) Tater Salad ($2.56)"
		puts "3) Cole Slaw ($4.43)"
		puts "4) Skip section"
	end

	def sides_1
		side_dish_menu
		sidedish = gets.strip.to_i
		case sidedish 
		when 1
			@order.push(@sides_item_1)
		when 2
			@order.push(@sides_item_2)
		when 3
			@order.push(@sides_item_3)
		when 4
			sides_2
		else
			puts "Please make a valid selection"
			side_dish_menu
		end
		sides_2
	end

	def sides_2
		side_dish_menu
		sidedish = gets.strip.to_i
		case sidedish 
		when 1
			@order.push(@sides_item_1)
		when 2
			@order.push(@sides_item_2)
		when 3
			@order.push(@sides_item_3)
		when 4
			total
		else
			puts "Please make a valid selection"
			side_dish_menu
		end
		total
	end

	def total
		puts "Your order consists of:"
		@order.map{|value, number| puts value}
		p "Does this complete your order? y or n"
		p "If you'd like to clear order and start over, type 'clear'"
		answer = gets.chomp.to_s
		if answer == 'y'
			p 'Computing Total...'
		elsif answer == 'n'
			sides_2
		elsif answer == 'clear'
			food
		end

		total = 0
		@order.map{|value, number| total += number}
		
		p "Your total comes to: #{total}"
		food
	end




food