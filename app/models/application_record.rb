class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.random_instance
    self.offset(rand(self.count)).first
  end
end
