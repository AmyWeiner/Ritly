class LinksController < ApplicationController


	def index
		render :index
	end

	def create
        @random_string = SecureRandom.urlsafe_base64(8) 
        params[:link][:random_string] = @random_string
		link = params.require(:link).permit(:url, :random_string)
	    @link = Link.create(link)
		redirect_to link_preview_path(@link.random_string)
	end

	def show
		@link = Link.find_by(random_string: params[:random_string])
		render :show
	end

	def redirect
		@link = Link.find_by(random_string: params[:random_string])
		redirect_to "http://#{@link.url}"
	end

end
