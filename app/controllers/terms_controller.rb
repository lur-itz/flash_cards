class TermsController < ApplicationController

	def index
		@terms = Term.all
	end

	def new
		@term = Term.new
	end

	def create
		@term = Term.new(term_params)

		if @term.save
			flash[:success] = "Term added"
			redirect_to terms_path
		else
			flash[:alert] = "Term not added"
			redirect_to new_term_path
		end
	end

	private
		def term_params
			params.require(:term).permit(:source, :target)
		end

end
