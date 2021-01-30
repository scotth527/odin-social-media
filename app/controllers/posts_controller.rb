
class PostsController < ApplicationController
    before_action :authenticate_user!

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(params)
    end

    def index
    end

    def show
    end


    def edit
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
