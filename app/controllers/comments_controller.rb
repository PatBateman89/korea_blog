class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only:[:edit, :update, :destroy]
  before_action :set_article

  def new
    @comment = Comment.new
  end

  def create
    @comment = @article.comments.create(params[:comment].permit(:reply, :article_id))
    @comment.user_id = current_user.id


    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path(@article)}
        format.js # render create.js.erb
      else
        format.html {redirect_to article_path(@article), notice: "Your comment did not save, please try again."}
        format.js
      end
    end
  end



  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:reply)
  end

end
