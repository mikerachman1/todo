class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable  
  
  has_many :lists, dependent: :destroy

  validates :username, presence: true

  def self.email_subscribed
    User.where(email_notification: true)
  end

end
