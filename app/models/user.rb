class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  
  validates :username, { :presence => true, :uniqueness => true }

  has_many :photos, :source => :photo
  
  has_many :likes, :source => :photo
  
  has_many :comments, :source => :comment

end
