class Road_manager < Sinatra::Base


    # GET "/" - This is the root route
    get "/" do
        erb "Welcome to Road Manager. An app that helps you to take your show on the road."
    end

    # GET "/venues" - Gets all the venues I have
    get "/venues" do

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
            <!-- Form Name -->
            <legend>Add New Artist</legend>

            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="name">Name</label>
              <div class="col-md-4">
              <input id="name" name="name" type="text" placeholder="" class="form-control input-md" required="">

              </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="eventName">Event Name</label>
              <div class="col-md-4">
              <input id="textinput" name="eventName" type="text" placeholder="" class="form-control input-md">

              </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="Location">Location</label>
              <div class="col-md-4">
              <input id="Location" name="Location" type="text" placeholder="City, State, Country " class="form-control input-md">

              </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
              <label class="col-md-4 control-label" for="age">Age</label>
              <div class="col-md-4">
                <textarea class="form-control" id="age" name="age">Enter numerical value</textarea>
              </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
              <label class="col-md-4 control-label" for="genres">Genres (separated by commas)</label>
              <div class="col-md-4">
                <textarea class="form-control" id="genres" name="genres">rock, pop</textarea>
              </div>
            </div>


            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label" for="singlebutton">Save artist</label>
              <div class="col-md-4">
                <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
              </div>
            </div>
          </fieldset>
        </form>
      </div>
      </div>
    </section>

    <section class="container">
      <div class="row">
        <div class="col-md-10 col-md-offset-1">
          <h2>Artists</h2>
        </div>
      </div>
      <!-- artists! -->
      <div id='artists'>




          <!-- one artist -->
          <div class="row artist">

            <div class="col-md-10 col-md-offset-1">
              <div class="panel panel-default">
                <div class="panel-body">





                  <div class='panel-footer'>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <!-- end one artist -->




      </div>
    </section>

    <!-- begin songModal: this is not visible until you call .modal() on it -->
    <div class="modal fade" tabindex="-1" role="dialog" id="songModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Create Profile</h4>
          </div>
          <div class="modal-body">
            <fieldset class='form-horizontal'>

            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="projectName">Project Name</label>
              <div class="col-md-4">
              <input id="projectName" name="projectName" type="text" placeholder="" class="form-control input-md" required="">

              </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="trackNumber">Track Number</label>
              <div class="col-md-4">
              <input id="trackNumber" name="trackNumber" type="text" placeholder="" class="form-control input-md">

              </div>
            </div>

            </fieldset>


          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="saveSong">Save changes</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>



  # POST "/venues" - Create a new book, add it to our list

  # GET "/venues/3" - Just get the information associated one specific book (that already exists, book id = 3)

  # PUT "/venues/3" - Updates a specific book (book id = 3)

  # PATCH "/venues/3" - Partially updates a specific book (book id = 3)

  # DELETE "/venues/3" - Deletes a specific book (book id = 3)


