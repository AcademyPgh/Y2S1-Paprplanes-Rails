class PostsController < ApplicationController
  before_action :set_post, only: [:update, :destroy]

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end
  
  #GET Posts that were sent to the user for main screen URL CALL http://localhost:3000/postfeed/2
  def show
    temp = Array.new

    PostAccess.where({FriendID: params[:UserID]}).where({Viewed: 'false'}).each do |pa|
      temp << pa.PostID
    end 
    render json: Post.where(ID: temp)
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:ID, :UserID, :Type, :Caption, :Content, :Counter)
    end
end
