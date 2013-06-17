class ReadersController < ApplicationController

	def new
		@reader = Reader.new
	end

	def create
		# Adding permit because of strong_parameters gem. Like rails 4 yeah!
		#reader = Reader.new(params[:reader]).permit(:email, :password, :password_confirmation))
		@reader = Reader.new(reader_params)
		if @reader.save
			redirect_to root_url, notice: "You are successfully registered."
		else
			flash.now[:error] = "Sorry, you've entered invalid registration details. Please try again."
			render :new
		end
	end

private

	def reader_params
		params.require(:reader).permit(:email, :password, :password_confirmation)
	end

# def create
# 	@reader = Reader.new(params[:reader])
# 	@reader.save
# 	redirect_to root_url
# end

end