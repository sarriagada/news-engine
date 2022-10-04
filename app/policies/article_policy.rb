class ArticlePolicy < ApplicationPolicy
  attr_reader :user, :article

  def initialize(user, article)
    @user = user
    @article = article
  end
  def index?
    user.admin?
  end
  def show?
    user.admin?
  end
  def new?
    user.admin?
  end
  def edit?
    user.admin?
  end
  def update?
    user.admin?
  end
  def destroy?
    user.admin?
  end
end
