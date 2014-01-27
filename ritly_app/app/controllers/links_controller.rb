class LinksController < ApplicationController


	def index
		render :index
	end

	def create
        @random_string = SecureRandom.urlsafe_base64(8) 
        params[:link][:random_string] = @random_string
		link = params.require(:link).permit(:url, :random_string)
	    @link = Link.create(link)
		#redirect_to "/go"
		redirect_to link_path(@link.id)
	end

	def show
		id = params[:id]
        @link = Link.find(id)
	end

end
