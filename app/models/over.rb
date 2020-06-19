class Over < ApplicationRecord
  belongs_to :inning
  has_many :balls
end
