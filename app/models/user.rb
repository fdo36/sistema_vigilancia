class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable :validatable, 

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable , :registerable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  has_and_belongs_to_many :camaras
end
