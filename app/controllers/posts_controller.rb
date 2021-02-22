
class PostsController < ApplicationController
    before_action :authenticate_user!, only:[:new, :create, :index, :edit, :show, :update, :delete]

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(params)
    end

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end


    def edit
        @post = Post.find(params[:id])
    end

    def update
    end

    def delete
    end

    private

    def post_params
        params.require(:post).permit(:body, :user_id)
    end

end
