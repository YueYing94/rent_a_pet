class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # def resolve
    #   scope.where(user: user)
    # end
  end

  def profile?
    true
  end
end
