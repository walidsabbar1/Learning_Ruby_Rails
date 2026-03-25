class BlogPostPolicy < ApplicationPolicy
  def edit?
    user.present? && record.user == user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
