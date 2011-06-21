class Ability
  include CanCan::Ability

  def initialize(provided_user)
    user = provided_user

    can :manage, :all if user.admin?
  end
end