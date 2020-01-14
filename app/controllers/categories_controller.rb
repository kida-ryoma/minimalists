class CategoriesController < ApplicationController
  def show
    if logged_in?
      @post = current_user.posts.build
      @category_posts = Post.where(category_id: params[:id]).order(id: :desc).page(params[:page])
      @posts = @category_posts
    end
  end
end
