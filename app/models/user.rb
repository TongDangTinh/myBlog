class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # tinh@example.com -> self.email.split('@') -> 
  # ["tinh", "example.com"] -> [0] -> "tinh".capitalize -> 
  # "Tinh"
  def username
    return email.split("@")[0].capitalize
  end
end
