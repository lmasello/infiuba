class ArticlesController < ApplicationController
  def show
    article
  end

  private

  def article
    @article ||= Article.find(params[:id])
  end
end
