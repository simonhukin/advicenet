class Client < ActiveRecord::Base
  default_scope :order => 'TRIM(LOWER(clients.last_name))'

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  def before_save
    self.first_name.capitalize!
    self.last_name.capitalize!
  end

end
