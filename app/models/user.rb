class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  serialize :property, Hash

  def apply_general
  	self.property = {}
  	self.property['blood'] = 4
  	self.property['distance'] = 1
  	self.property['cards'] = ['kill', 'kill', 'defend', 'defend']
  	self.save!
  	'applied!'
  end
end
