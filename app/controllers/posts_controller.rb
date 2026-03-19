class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def index
      @posts = BlogPost.all.order(created_at: :desc)
    end
    def show
        rescue ActiveRecord::RecordNotFound 
        redirect_to root_path
    end
    def new
        @post = BlogPost.new
    end
    def create
        @post = BlogPost.new(post_params)
        if @post.save
            redirect_to "/posts/#{@post.id}"
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @post.update(post_params)
            redirect_to "/posts/#{@post.id}"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @post.destroy
        redirect_to root_path
    end

    private
    def post_params
        params.require(:blog_post).permit(:title, :body)
    end

    def set_post
        @post = BlogPost.find(params[:id])
    end
end
 



