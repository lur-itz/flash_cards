require 'test_helper'

class TermTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	def setup
		@term = Term.new(	source: "source",
							target: "target"	)
	end

	test "should be valid" do
		assert @term.valid?
	end

	test "source not present" do
		@term.source = ""
		assert_not @term.valid?
	end

	test "target not present" do
		@term.target = ""
		assert_not @term.valid?
	end
end
