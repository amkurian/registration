class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role.name == "admin"
      can :manage, :all
    elsif user.role.name == "user"
      can :read, :all  
    end
  end
end