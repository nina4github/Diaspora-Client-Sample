class PostsController < ActionController::Base
    require 'logger'


    # GET /posts
    # GET /posts.json
    def index
     # @posts = Post.all

      respond_to do |format|
        format.html # index.html.erb
      #  format.json { render json: @posts }
      end
    end

    # GET /posts/1
    # GET /posts/1.json
    def show
    #  @post = Post.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
    #    format.json { render json: @post }
      end
    end

    # GET /posts/new
    # GET /posts/new.json
    def new
   #   @post = Post.new

      respond_to do |format|
        format.html # new.html.erb
  #      format.json { render json: @post }
      end
    end

    def done
      respond_to do |format|
        format.html
      end
    end

    # POST /posts
    # POST /posts.json
    def create
      msg = params[:msg]
    #  @post = Post.new(params[:post])
     @current_user= current_user

      # call to create will generate a new post with these information and on this aspect
      message = {'status_message'=>{'text'=>msg},'aspect_ids' => '9'}
      @status_message =JSON.parse(current_user.access_token.token.post(
        '/api/v0/create', message))
        

      respond_to do |format|
        if @status_message.status.equals("201")
          format.html { render action: "done" }
  #      if @post.save
  #        format.html { redirect_to @post, notice: 'Post was successfully created.' }
  #        format.json { render json: @post, status: :created, location: @post }
        else
          format.html { render action: "new" }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end
    
end