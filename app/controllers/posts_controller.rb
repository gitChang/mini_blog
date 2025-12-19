class PostsController < ApplicationController
  before_action :init_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all.order(published_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      notice_message = if @post.published_at > Time.current
                        "Post scheduled for #{@post.published_at.strftime('%B %d')}"
                      else
                        "Post was successfully published."
                      end
      redirect_to post_path(@post), notice: notice_message
    else
      flash.now[:alert] = @post.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  def show
    render "show"
  end

  def edit
    render "edit"
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "Post was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path, status: :see_other, notice: "Post was successfully deleted."
    else
      redirect_to post_path(@post), alert: "Post could not be deleted."
    end
  end

  private

  def init_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :published_at, :content)
  end
end
