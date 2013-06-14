# Pushed to github under PCSWeek2Exam
require 'pp'

class Neil

	attr_accessor :fun_rating

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

	def add_fun_rating(fun_rating)
		fun_rating = fun_rating + 1
		return
	end

	def talk_to(response, game_response)
		puts 'How are you?'
		response = response.downcase.chomp
		if response == 'good' || response == 'bad'
			puts 'Would you like to play a game?'
				play_game = game_response
				if play_game == 'yes'
					puts 'Tubular'
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
			talk_to('good', 'yes')
		end
	end

end

neil = Neil.new
neil.fizzbuzz(10)
neil.talk_to('Good', 'yes')