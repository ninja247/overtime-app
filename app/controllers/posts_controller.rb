class PostsController < ApplicationController
    before_action :set_post, only: [:show]
    def index
    end

    def new
        @posts = Post.new
    end
    
    def create
        @posts = Post.new(post_params)
        @posts.user_id = current_user.id

        if @post.save
            redirect_to, notice: 'Your post was created successfully'
        else
            render :new
        end
    end

    def show
    end

    private

    def post_params
        params.require(:post).permit(:date, :rationale)
    end

    def set_post
        @post = Post.find(params[:id])
    end

end
