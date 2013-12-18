class User < ActiveRecord::Base
	belongs_to :persona, :foreign_key => 'persona_id'
	has_many :prestamos
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:persona_id,:admin
  # attr_accessible :title, :body
  
  validates_presence_of :persona_id, :message => " - Es necesario verificar el DNI"


end
