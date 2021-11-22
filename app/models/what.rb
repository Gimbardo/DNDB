class What < ApplicationRecord
  validates :content, length: {maximum: 35}
end
