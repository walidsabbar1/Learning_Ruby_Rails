class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = user_signed_in? ? BlogPost.sorted : BlogPost.published.sorted
  end

  def show
  end

  def new
    @post = BlogPost.new
  end

  def create
    @post = BlogPost.new(post_params)
    @post.user = current_user
    
    if params[:commit] == "Save as Draft"
      @post.published_at = nil
    elsif params[:commit] == "Publish Now"
      @post.published_at = Time.current
    end

    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize! @post
  end

  def update
    authorize! @post
    @post.assign_attributes(post_params)
    
    if params[:commit] == "Update Draft"
      @post.published_at = nil
    elsif params[:commit] == "Update & Go Live"
      @post.published_at = Time.current
    end

    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize! @post
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:blog_post).permit(:title, :body, :published_at)
  end

  def set_post
    @post = user_signed_in? ? BlogPost.find(params[:id]) : BlogPost.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

end
