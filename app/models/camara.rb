class Camara < ActiveRecord::Base
  attr_accessible :ubicacion, :url

  has_and_belongs_to_many :users
end
