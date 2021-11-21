class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable,, :timeoutable, :trackable and :omniauthable
  #
  # Removed by me:
  # :recoverable

  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :lockable

  validates :username, uniqueness: true
  validates :username, length: { minimum: 3 }
  has_many :gifts

  def admin?
    admin
  end
end
