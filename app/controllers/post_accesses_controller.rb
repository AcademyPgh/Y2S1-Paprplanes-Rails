class PostAccessesController < ApplicationController
  before_action :set_post_access, only: [:show, :update, :destroy]

  # GET /post_accesses
  def index
    @post_accesses = PostAccess.all

    render json: @post_accesses
  end

  # GET /post_accesses/1
  def show
    render json: @post_access
  end

  # POST /post_accesses
  def create
    @post_access = PostAccess.new(post_access_params)

    if @post_access.save
      render json: @post_access, status: :created, location: @post_access
    else
      render json: @post_access.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_accesses/1
  def update
    if @post_access.update(post_access_params)
      render json: @post_access
    else
      render json: @post_access.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_accesses/1
  def destroy
    @post_access.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_access
      @post_access = PostAccess.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_access_params
      params.require(:post_access).permit(:UserID, :PostID, :FriendID, :Viewed)
    end
end
