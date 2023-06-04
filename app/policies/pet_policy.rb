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

  def destroy?
    record.user == user
  end

  def profile?
    true
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

  def new?
    true
  end

  def create?
    true
  end
end
