class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Post   #guest
    if user.present?  #logged in
      can :manage, Post, user_id: user.id
      if user.admin?  #admin
        can :manage, :all
      end
    end
  end

end
