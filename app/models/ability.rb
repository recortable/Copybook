class Ability
  include CanCan::Ability

  def initialize(provided_user)
    user = provided_user.present? ? provided_user : User.new

    can :manage, :all if user.admin?
  end
end