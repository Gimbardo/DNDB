class Who < ApplicationRecord
  validates :content, length: {maximum: 35}
end
