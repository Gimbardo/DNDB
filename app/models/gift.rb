class Gift < ApplicationRecord
  belongs_to :who
  belongs_to :what
  belongs_to :why
  belongs_to :user
end
