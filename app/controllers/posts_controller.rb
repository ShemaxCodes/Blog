class PostsController < ApplicationController


def index 
    @posts = Post.all

end 



def new 
    @post = Post.new

end 



def create
    @post = Post.new(post_params)
        if @post.save  
            redirect to index_path
        else
            render :new 
        end 
end 



def show 
    @post = Post.find(params[:id])
end 



def destroy

end 



private
 
def post_params
    params.permit(:title, :body)
end


end 