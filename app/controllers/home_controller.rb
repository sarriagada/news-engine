class HomeController < ApplicationController
  def index
    @featured = Article.featured
    @articles = Article.featured(false)
  end
end
