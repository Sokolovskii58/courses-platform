class CoursePolicy < ApplicationPolicy

    def new?
      user.has_role? :teacher || user.present? if user
    end

    def create?
      user.has_role? :teacher || user.present? if user
    end

    def edit?
      user.has_role? :teacher || user.present? if user
    end

    def update?
      user.has_role? :teacher || user.present? if user
    end

    def delete?
      user.has_role? :teacher || user.present? if user
    end

    class Scope < Scope
      def resolve
        scope.all
      end

  end
end
