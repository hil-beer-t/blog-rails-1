class CommentsController < ApplicationController
  def create
        
    comment = Comment.create!(comments_params) # Se alguma coisa acontecer de errado, gere uma action de erro
    # create! = mais simples
    redirect_to comment.post, notice: 'O seu comentário foi enviado.'
  end

  private 

  def comments_params
    params.require(:comment).permit(:post_id, :author, :body)
  end
end