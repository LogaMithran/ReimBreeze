class UserPolicy
  attr_reader :user, :record
  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.admin?
  end
  def show?
    user.admin?
  end
end