class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable :validatable, 

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable , :registerable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  #validates :password, confirmation: true
  #validates :password_confirmation, presence: true

  validates :email, :format => { :with => /\A(([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,}))?\z/i,
    :message => "debe seguir el formato ejemplo@midominio.com" }


  has_and_belongs_to_many :camaras
end
