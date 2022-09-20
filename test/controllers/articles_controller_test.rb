require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should redirect if not logged in" do 
    get admin_root_path
    assert_redirected_to login_path
  end

  test "should get new" do
    get new_admin_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference("Article.count") do
      post admin_articles_url, params: { article: { body: @article.body, source: @article.source, title: @article.title } }
    end

    assert_redirected_to admin_article_url(Article.last)
  end

  test "should show article" do
    get admin_article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch admin_article_url(@article), params: { article: { body: @article.body, source: @article.source, title: @article.title } }
    assert_redirected_to admin_article_url(@article)
  end

  test "should destroy article" do
    assert_difference("Article.count", -1) do
      delete admin_article_url(@article)
    end

    assert_redirected_to admin_articles_url
  end
end
