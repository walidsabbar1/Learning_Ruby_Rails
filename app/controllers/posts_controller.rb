class PostsController < ApplicationController
    def index
      @posts = BlogPost.all.order(created_at: :desc)
    end
    def show
        @post = BlogPost.find(params[:id])
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
        @post = BlogPost.find(params[:id])
    end

    def update
        @post = BlogPost.find(params[:id])
        if @post.update(post_params)
            redirect_to "/posts/#{@post.id}"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @post = BlogPost.find(params[:id])
        @post.destroy
        redirect_to root_path
    end

    private
    def post_params
        params.require(:blog_post).permit(:title, :body)
    end
end
 



