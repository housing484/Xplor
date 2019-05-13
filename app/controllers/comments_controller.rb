class CommentsController < ApplicationController
    def create
        @apartmentsw = Apartmentsw.find{params[:apartmentsw_id]}
        @comment = @apartmentsw.comments.create(params[:comment].permit(:name, :body))
        redirect_to apartmentsws_path(@apartmentsw)
    end
    
    def destroy
        @apartmentsw = Apartmentsw.find(params[:apartmentsw_id])
        @comment = @apartmentsw.comments.find(params[:id])
        @comment.destroy
        redirect_to apartmentsw_path(@apartmentsw)
    
    end
    
    
end
