class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable,, :timeoutable, :trackable and :omniauthable
  #
  # Removed by me:
  # :recoverable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :lockable
  has_many :gifts

  def admin?
    admin
  end
end
