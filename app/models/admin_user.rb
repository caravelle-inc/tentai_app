class AdminUser < ActiveRecord::Base

  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :admin_role_assigns
  has_many :admin_roles, through: :admin_role_assigns
  has_many :items

  def display_name
    self.email
  end

end
