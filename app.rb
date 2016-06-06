class Road_manager < Sinatra::Base


    # GET "/" - This is the root route
    get "/" do
        @venue = Venue.all
        p "Venues from controller: "
        p @venues
        p "****"
        erb :index
    end

    # GET "/venues" - Gets all the venues I have
    get "/venues" do

       @venues = Venue.all
       erb :'venues'
    end

    # POST "/venues" - Create a new venue, and adds it to my list
    post "/venues" do
      venue = Venue.create(params)
      redirect to '/venues/#{venue.id}'
    end

    get "/venues/new" do

        erb :'new' #this is where a list of venues will be located.

    end

     get "/venues/:id" do
        @venue = Venue.find(params[:id])

    end

    # EDIT - like NEW, this just gives us a form that will PUT/PATCH our changes
    # GET "/venues/3" - Just get the information associated with book 3

    get "/venues/:id/edit" do
        # some code will go here
    end

    # UPDATE - like CREATE, this does the actual updating
    # PUT "/venues/3" - Updates a specific book (book id = 3)
    put "/venues/:id" do
        # some code will go here
    end

    # UPDATE - believe it or not, PUT & PATCH are often the same code, so many developers skip PATCH and just use PUT
    # PATCH "/venues/3" - Partially updates a specific book (book id = 3)
    patch "/venues/:id" do
        # some code will go here
    end

    # DESTROY - totally nukes a book from the database
    # DELETE "/venues/3" - Deletes a specific book (book id = 3)
    post "/venues/:id" do |id|
          @venues = Venues.find_by_id(params[:id])
          @venues.delete
          redirect to '/venues'
    end
end


__END__
@@layout




  # POST "/venues" - Create a new book, add it to our list

  # GET "/venues/3" - Just get the information associated one specific book (that already exists, book id = 3)

  # PUT "/venues/3" - Updates a specific book (book id = 3)

  # PATCH "/venues/3" - Partially updates a specific book (book id = 3)

  # DELETE "/venues/3" - Deletes a specific book (book id = 3)


