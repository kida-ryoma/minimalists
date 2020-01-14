class CategoriesController < ApplicationController
  def show
    @category_posts = Post.where(category_id: params[:id]).order(id: :desc).page(params[:page])
    @posts = @category_posts
  end
end
