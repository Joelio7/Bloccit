class Api::V1::PostsController < Api::V1::BaseController

  def index
    posts = Post.all
    render json: post.to_json, status: 200
  end

  def show
    post = Post.find(params[:id])
    render json: post.to_json(include: :comments), status: 200
  end

  def create
  end

  def update
    post = Post.find(params[:id])
    if post.update_attributes(post_params)
      render json: post.to_json, status: 200
    else
      render json: {error: "Post update failed", status: 400}, status: 400
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :public)
  end
end
