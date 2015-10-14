class Ability
  include CanCan::Ability
    def initialize(admin_user)
      admin_user.admin_roles.each { |role| send(role.name.downcase) }
      can :manage, ActiveAdmin::Page, :name => "Dashboard"
    end

    def admin
      super_admin
      cannot :manage, AdminUser
      cannot :manage, AdminRole
      cannot :create, ItemContact
      cannot :update, ItemContact
      cannot :destroy, ItemContact
    end

    def super_admin
      can :manage, :all
      cannot :create, ItemContact
      cannot :update, ItemContact
      cannot :destroy, ItemContact
    end

  end

