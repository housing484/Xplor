class PostsController < ApplicationController
    def homepage
        
    end
    
    
    def index
        @posts = Post.all
    end
    

    def show 
        
        @post=Post.find(params[:id])
    end
    
    #form
    def new 
        
    end
    
    def create
        #render plain: params[:post].inspect
        @post=Post.new(params[:post].permit(:title,:body))
        
        @post.save
        redirect_to @post
    end
    
    private def post_params
        params.require(:Post).permit(:title, :body)
    end
    
    
end
