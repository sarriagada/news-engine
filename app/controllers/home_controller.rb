class HomeController < ApplicationController
  def index
    @featured_articles = Article.featured
    @articles = Article.featured(false)
  end
end
