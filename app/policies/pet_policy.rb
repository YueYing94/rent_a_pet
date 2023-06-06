class PetPolicy < ApplicationPolicy
  class Scope < Scope
    # def resolve
    #   scope.where(user: user)
    # end
  end

  def update?
    record.user == user
  end

  def destroy?
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

  def new?
    true
  end

  def create?
    true
  end
end
