class PetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
  
  def update?
    record.user == user
  end

  def edit?
    update?
  end
  
  def search?
    true
  end

  def show?
    true
  end
end
