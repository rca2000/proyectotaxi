class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def passenger?
    self.role == 'administrator'    
  end
  
  def driver?
    self.role == 'customer'
  end
  
  def user?
    self.role == 'administrator'    
  end
  
  def administrator?
    self.role == 'customer'
  end
end
