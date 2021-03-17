# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new # guest user (not logged in)
       if user.has_role? :trainer
         can :read, :all
       elsif user.has_role? :trainee
         can :manage, :all
       end
  
  end
end
