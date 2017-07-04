require 'test_helper'

class TermsControllerTest < ActionDispatch::IntegrationTest

	def setup
		@term = terms(:cat)
		@other_term = terms(:dog)
	end

	test "should display term not added" do
		get new_term_path
		post terms_path, params: { term: {	source:	@term.source,
											target:	"" } }
		assert flash[:alert]
	end

	test "should redirect when term not added" do
		get new_term_path
		post terms_path, params: { term: {	source:	@term.source,
											target:	"" } }
		assert_redirected_to new_term_path
	end

	test "should display term added" do
		get new_term_path
		post terms_path(@term), params: { term: {	source:	@term.source,
													target:	@term.target } }
		assert flash[:success]
	end

	test "should redirect when term added" do
		get new_term_path
		post terms_path(@term), params: { term: {	source:	@term.source,
													target:	@term.target } }
		assert_redirected_to terms_path
	end

end
