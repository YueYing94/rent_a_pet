class PetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def destroy?
    record.user == user
  end

  def profile?
    true
  end

  def search?
    true
  end
end
