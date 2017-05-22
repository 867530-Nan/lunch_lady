require 'pry'

@order = []


@main_items = [
{food: 'Hamburger', price: 4.51, nutrition: 'Super fatty', taste: 'Delicious'},
{food: 'Salad', price: 12.42, nutrition: 'Healthy', taste: 'Cherry tomatoes FTW!'},
{food: 'Hot Dog', price: 4.43, nutrition: 'You\' not acutally interested in the nutritional content, don\'t kid yourself', taste: 'Chicago Dogs Babyyy!!'}
]

@side_items = [
{food: 'French Fries', price: 2.25, nutrition: 'Not the greatest, especially with all that ketchup', taste: 'Better than sex'},
{food: 'Tater Salad', price: 2.56, nutrition: 'Not good, yet better than fries', taste: 'Nothing tastes bad when you\'re starving'},
{food: 'Cole Slaw', price: 2.21, nutrition: 'Now that\'s the stuff', taste: 'Mayonnaise, you decide.'}
]

@side_items_two = [
{food: 'Mashed Potatoes', price: 3.44, nutrition: 'Heavy Butter, heavy salt, fat-free gravy on top', taste: 'Better than sex'},
{food: 'Chocolate Chip Cookie', price: 1.25, nutrition: '16g Sugar, 240 Calories, but who cares its a cookie', taste: 'Grandama Approved'},
{food: 'Corn', price: 2.15, nutrition: 'Fresh on the cob, salted/buttered to order', taste: 'Top selling side-item'}
]

	def food
		@order.clear
		puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHere's is today's menu,\nYou get 1 Main Dish, and 2 side dishes."
		puts "What Main Dish would you like:\n"
		@main_items.each_with_index {
			|items, index|
			 indexplusone = index + 1
			 puts "#{indexplusone}) #{items[:food]}: $#{items[:price]}\n"
			}
		menu
	end

	def menu
		decision = gets.strip
		case decision
		when '1'
			@order.push(@main_items[0])
		when 'Hamburger'
			@order.push(@main_items[0])
		when '2'
			@order.push(@main_items[1])
		when 'Salad'
			@order.push(@main_items[1])
		when '3'
			@order.push(@main_items[2])
		when 'Hot Dog'
			@order.push(@main_items[2])
		when 'hamburger'
			@order.push(@main_items[0])
		when 'salad'
			@order.push(@main_items[1])
		when 'hot dog'
			@order.push(@main_items[2])
		when 'Hot dog'
			@order.push(@main_items[2])
		else
			puts "Please type a valid selection"
			food
		end
		sides_1
	end

	def side_dish_menu
		puts "\n\nPlease select a side dish:"
		@side_items.each_with_index {
			|items, index|
			 indexplusone = index + 1
			 puts "#{indexplusone}) #{items[:food]}: $#{items[:price]}"}
		puts "Press '4' to skip section\n\n"
	end

	def side_dish_two_menu
		puts "\n\nPlease select a side dish:"
		@side_items_two.each_with_index {
			|items, index|
			 indexplusone = index + 1
			 puts "#{indexplusone}) #{items[:food]}: $#{items[:price]}"}
		puts "Press '4' to skip section\n\n"
	end

	def sides_1
		side_dish_menu
		sidedish = gets.strip
		case sidedish 
		when '1'
			@order.push(@side_items[0])
		when '2'
			@order.push(@side_items[1])
		when '3'
			@order.push(@side_items[2])
		when 'French Fries'
			@order.push(@side_items[0])
		when 'Tater Salad'
			@order.push(@side_items[1])
		when 'Cole Slaw'
			@order.push(@side_items[2])
		when 'french fries'
			@order.push(@side_items[0])
		when 'tater salad'
			@order.push(@side_items[1])
		when 'cole slaw'
			@order.push(@side_items[2])
		when '4'
			sides_2
		else
			puts "Please make a valid selection"
			sides_1
		end
		sides_2
	end

	def sides_2
		side_dish_two_menu
		sidedish = gets.strip
		case sidedish 
		when '1'
			@order.push(@side_items_two[0])
		when '2'
			@order.push(@side_items_two[1])
		when '3'
			@order.push(@side_items_two[2])
		when 'Mashed Potatoes'
			@order.push(@side_items_two[0])
		when 'Chocolate Chip Cookie'
			@order.push(@side_items_two[1])
		when 'Corn'
			@order.push(@side_items_two[2])
		when 'mashed potatoes'
			@order.push(@side_items_two[0])
		when 'chocolate chip cookie'
			@order.push(@side_items_two[1])
		when 'corn'
			@order.push(@side_items_two[2])
		when '4'
			total
		else
			puts "Please make a valid selection"
			sides_2
		end
		total
	end

	def start_again
		puts "\n\nWould you like to go through the lunch line again"
		puts "1) Yes, I'm still hungry"
		puts "2) No, I'm late for class"
		answer = gets.chomp.to_i
		case answer
		when 1
			puts "Ok, enjoy your second meal"
			food
		when 2
			p "Ok, goodbye" 
			exit
		end
	end


	def total
		puts "\n\n\nYour order consists of:"
		@order.map{|item| puts "#{item[:food]}"}
		puts "\nWould you like to see nutrition and taste information? 'yes' or 'no'"
		taste = gets.chomp.to_s
		unless taste == 'n' || taste == 'No' || taste == 'N' || taste == 'no'
			puts "Please Select from the following:"
			puts "1) Nutritional information"
			puts "2) Read a snip-it on the taste.."
			puts "3) Read them both..."
			nuts = gets.chomp.to_i
			case nuts 
			when 1
				puts "Here's the nutritional information:\n"
				@order.map{|item| puts "#{item[:food]}: #{item[:nutrition]}\n"}
			when 2
				puts "And, here's a snip-it on the taste:\n"
				@order.map{|item| puts "#{item[:food]}: #{item[:taste]}\n"}
			when 3
				puts "Here's the nutritional information:\n"
				@order.map{|item| puts "#{item[:food]}: #{item[:nutrition]}\n"}
				puts "And, here's a snip-it on the taste:\n"
				@order.map{|item| puts "#{item[:food]}: #{item[:taste]}\n"}
			else
				puts "Sorry I didn't understand that.."
				total
			end
		end
		puts "\n\nDoes this complete your order? y or n"
		puts "If you'd like to clear order and start over, type 'clear'"
		answer = gets.chomp.to_s
		if answer == 'y' || answer == 'Y' || answer == 'yes' || answer == 'Yes'
			p 'Computing Total...'
		elsif answer == 'n' || answer == 'N' || answer == 'No' || answer == 'NO'
			sides_1
		elsif answer == 'clear' || answer == 'Clear'
			food
		end

		total = 0
		@order.map{|items| total += items[:price]}

		
		puts "\n\n\nYour total comes to: #{total}"
		start_again
	end




food