require 'test_helper'

class ArticlePolicyTest < ActiveSupport::TestCase

  def setup
  	@available_actions = [:index, :new, :create, :edit, :update, :destroy]
    @editor = users(:editor)
    @admin = users(:admin)
  end

  def test_create?
    policy = ArticlePolicy.new @admin, false
    refute policy.create?
  end

  def test_destroy?
    policy = ArticlePolicy.new @admin, false
    refute policy.destroy?
  end

end
