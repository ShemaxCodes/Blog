class PostsController < ApplicationController


def index 


end 



def new 
    @post = Post.new

end 



def create
@post = Post.new
if @post.save 
    posts << @post 
redirect to index_path
end 
end 



def show 

end 



def destroy

end 






end 