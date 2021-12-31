class Gift < ApplicationRecord
  belongs_to :who
  belongs_to :what
  belongs_to :why
  belongs_to :user

  def self.generate
    who = Who.random_instance
    what = What.random_instance
    why = Why.random_instance
    return self.new(who: who, what: what, why: why)
  end
end
