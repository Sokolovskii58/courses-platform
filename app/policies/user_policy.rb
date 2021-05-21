class UserPolicy < ApplicationPolicy

  def edit?
    user.has_role? :admin || user.present? if user
  end

  def update?
    user.has_role? :admin || user.present? if user
  end


  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
