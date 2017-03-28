class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    @user
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    @user
  end

  def new?
    @user
  end

  def update?
    @user && @user.profile == @user
  end

  def edit?
    u@user && @user.profile == @user
  end

  def destroy?
    @user && @user.profile == @user
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
