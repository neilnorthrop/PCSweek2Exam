require 'pp'
require 'minitest/autorun'
require './exam.rb'
# Set up my test class using my Sublime snippet 'mt'!
class NeilTest < MiniTest::Unit::TestCase
	# Used the setup method to add my instance class
	def setup
		@neil = Neil.new
	end
	# Created a test to make a class
	def test_that_it_makes_a_class
		assert Neil.new
	end
	# A test to talk to me
	def test_that_neil_can_talk_to_you
		assert @neil.talk_to('good', 'yes')
	end
end