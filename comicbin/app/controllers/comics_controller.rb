class ComicsController <ApplicationController

	def index

		@comics = Comic.all

	end


	def show 

		the_comic_id = params["comic_id"]

		@comics = Comic.find_by :id => the_comic_id

		render 'show'

	end


	def toast 

		@the_comic_id = params["comic_id"]
        
		m = Comic.find_by(:id => @the_comic_id)
		m.destroy

		redirect_to "/comics"

	end 


	def new 

	end 

	def create 
	 	m = Comic.new
   	 	m.title = params['title']
    	m.description = params['description']
   		m.image_url = params['images']
   		m.save

        redirect_to "/movies"

	end 

end 