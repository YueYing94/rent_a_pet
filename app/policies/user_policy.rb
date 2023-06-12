class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # def resolve
    #   scope.where(user: user)
    # end
  end

  def profile?
    true
  end

  def show?
    true
  end
end
