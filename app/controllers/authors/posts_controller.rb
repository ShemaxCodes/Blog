module Authors
    class PostsController < AuthorsController


    def index 
        @posts = Post.all
    end 



    def new 
        @post = current_author.posts.build

    end 


    def create
        @post = current_author.posts.build(post_params)
        if @post.save  
            redirect_to posts_path
        else
            render :new 
        end 
    end 



    def show 
        @post = Post.find(params[:id])
    end 

    def destroy
        @post.destroy
        redirect_to posts_path
    end



    private
    
    def post_params
        params.require(:post).permit(:title, :body)
    end

    end 
end 