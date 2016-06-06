class Road_manager < Sinatra::Base


    # GET "/" - This is the root route
    get "/" do
        erb "Welcome to Road Manager. An app that helps you to take your show on the road."
    end

    # GET "/venues" - Gets all the venues I have
    get "/venues/new" do
      # @venues = Venue.new
        erb :'new'
    end

    # POST "/venues" - Create a new venue, and adds it to my list
    post "/venues" do

    end

    get "/venues" do
      @venues = ["Sam Jordans", "City Nights", "Auntie April's"]
        erb :'venues' #this is where a list of venues will be located.

    end

     get "/venues/:id" do
        # params[:id]   # => would return 3 in our example
        # some more code will go here
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
    delete "/venues/:id" do
        # some code will go here
    end
end


__END__
@@layout




  # POST "/venues" - Create a new book, add it to our list

  # GET "/venues/3" - Just get the information associated one specific book (that already exists, book id = 3)

  # PUT "/venues/3" - Updates a specific book (book id = 3)

  # PATCH "/venues/3" - Partially updates a specific book (book id = 3)

  # DELETE "/venues/3" - Deletes a specific book (book id = 3)


