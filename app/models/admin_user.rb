class AdminUser < ActiveRecord::Base

  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :admin_role_assigns
  has_many :admin_roles, through: :admin_role_assigns
  has_many :items

  validates :name, :tel, :address, :email, :admin_roles, :password_confirmation,  presence: true

  def display_name
    self.name
  end

end
