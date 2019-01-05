class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :role_users

  def find_role(name_role)
    result = false
    self.role_users.each do |role_user|
      if role_user.role.name == name_role
        result = true
      end
    end
    return result    
  end

  def first_role
    self.role_users.first.role.name
  end

  def administrator?
    find_role("Administrator")
  end

  def analyst?
    find_role("Analyst")    
  end
end
