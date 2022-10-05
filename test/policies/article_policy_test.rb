require 'test_helper'

class ArticlePolicyTest < ActiveSupport::TestCase

  def setup
  	@available_actions = [:index, :new, :create, :edit, :update, :destroy]
    @editor = users(:editor)
    @admin = users(:admin)
  end

  def test_index?
    policy = ArticlePolicy.new @admin, true
    assert policy.new?

    policy = ArticlePolicy.new @editor, true
    refute policy.new?
  end

  def test_create?
    policy = ArticlePolicy.new @editor, true
    refute policy.create?
  end

  def test_edit?
    policy = ArticlePolicy.new @admin, true
    assert policy.edit?

    policy = ArticlePolicy.new @editor, true
    refute policy.edit?
  end

  def test_update
    policy = ArticlePolicy.new @admin, true
    assert policy.update?

    policy = ArticlePolicy.new @admin, false
    assert policy.update?
  end

  def test_destroy?
    policy = ArticlePolicy.new @admin, true
    assert policy.destroy?

    policy = ArticlePolicy.new @editor, true
    refute policy.destroy?
  end

end
