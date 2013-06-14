require 'pp'
require 'minitest/autorun'
require './exam.rb'

class NeilTest < MiniTest::Unit::TestCase

	def setup
		@neil = Neil.new
	end

	def test_that_it_makes_a_class
		assert Neil.new
	end

	def test_that_neil_can_talk_to_you
		assert @neil.talk_to('good', 'yes')
	end
end