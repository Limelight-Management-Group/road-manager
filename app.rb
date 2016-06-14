class Road_manager < Sinatra::Base


    # GET "/" - This is the root route
    get "/" do
      @venues = Venue.all
      erb :index
    end

    # GET "/venues" - Gets all the venues I have
    get "/venues" do
       @venues = Venue.all


        erb :'venues'


    end


    # POST "/venues" - Create a new venue, and adds it to my list
    post "/venues" do
      @venue = Venue.create(params)
      redirect to '/venues/' + @venue.id.to_s
    end

    get "/venues/new" do

        erb :'new' #this is where a list of venues will be located.

    end

    get "/venues/:id" do
        @venue = Venue.find(params[:id])

        erb :'show'
    end

    # EDIT - like NEW, this just gives us a form that will PUT/PATCH our changes
    # GET "/venues/3" - Just get the information associated with book 3

    get "/venues/:id/edit" do
        @venue = Venue.find(params[:id])
        erb :'edit'
    end

    # UPDATE - like CREATE, this does the actual updating
    # PUT "/venues/3" - Updates a specific book (book id = 3)
    put "/venues/:id" do
         @venue = Venue.find(params[:id])
      if @venue.update_attributes(params[:venue])
        puts @venue
        redirect("/venues")
      else
        erb :'edit'
      end
    end

    # UPDATE - believe it or not, PUT & PATCH are often the same code, so many developers skip PATCH and just use PUT
    # PATCH "/venues/3" - Partially updates a specific book (book id = 3)
    patch "/venues/:id" do
       @venue = Venue.find(params[:id])
       puts "qkwlekqwjbekjwqb"
    end

    # DESTROY - totally nukes a book from the database
    # DELETE "/venues/3" - Deletes a specific book (book id = 3)
    delete "/venues/:id" do
       @venue = Venue.find(params[:id])
       @venue.destroy
       redirect "/venues"

    end

    def new
       @registration = Venue.new
       @course = Course.find_by id: params["_id"]
    end


    end
__END__

@@layout
