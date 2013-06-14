# Pushed to github under PCSWeek2Exam
require 'pp'
# Started a class to hold methods
class Neil

	# Added some nice variables
	attr_accessor :fun_rating, :my_favorite_number

	def initalize(fun_rating, my_array)
		@fun_rating = 0
	end

	# Started a method to do the FizzBuzz challenge
	def fizzbuzz(num)
		0.upto(num) do |i|
			if i % 3 == 0 && i % 5 == 0
				puts 'FizzBuzz'
			elsif i % 5 == 0
				puts 'Buzz'
			elsif i % 3 == 0
				puts 'Fizz'
			else
				puts i
			end
		end
	end
	# A method to add to the fun rating of this class
	def add_fun_rating(fun_rating)
		fun_rating = fun_rating + 1
		return
	end
	# A method to talk to me and I'll talk back (very limited talking back)
	def talk_to(response, game_response)
		puts 'How are you?'
		response = response.downcase.chomp
		if response == 'good' || response == 'bad'
			puts 'Would you like to play a game?'
				play_game = game_response
				if play_game == 'yes'
					puts 'Tubular'
					# Added to the fun rating!
					add_fun_rating(1)
					return true
				elsif play_game == 'no'
					puts 'Too bad'
					return true
				end
		elsif response == 'terrible'
			puts 'Cheer up buttercup'
			return true
		elsif response == 'happy'
			puts 'Good for you!'
			return true
		elsif response == 'mad'
			puts 'Too bad'
			return true
		else
			# Used recursive looping
			talk_to('good', 'yes')
		end
	end

	def favorite_number(my_favorite_number)
		puts "What is your favorite number?"
		puts "My favorite number is: #{my_favorite_number}"
	end

	def favorite_color(my_favorite_color)
		puts "My favorite color is: #{my_favorite_color}"
	end

	def childhood
		# My array of childhood things
		@my_array = [
			"Stretch Armstrong", "My Buddy", "Power Wheels", "G.I. Joes", "Hot Wheels", "Apple IIe", "Nintendo", "Pluto", "Goofy", "He-Man", "Dorf", "Gummy Bears"
		]
		@my_array.each do |i|
			puts i
		end
	end

	def pets
		# My hash of pets I know
		@my_hash = {
			"Lemon" => "cat",
			"LuLu" => "cat",
			"Guy" => "cat",
			"Molly" => "dog",
			"Stella" => "dog"
		}
		@my_hash.each_key {|k| puts k}
	end

end

# Created an instance of the class
neil = Neil.new
# Used a method on the instance neil
neil.fizzbuzz(10)
neil.talk_to('run', 'yes')
neil.favorite_number(42)
neil.favorite_color('blue')
neil.childhood
neil.pets

# Steps for creating an algorithms:
# 1. Requirements
# 2. Tools
# 3. Whiteboard
# 4. Test/Spec
# 5. Code
# 6. Refactor



