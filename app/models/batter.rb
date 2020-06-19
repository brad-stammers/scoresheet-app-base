class Batter < ApplicationRecord
  belongs_to :battingdetail
  has_many :balls
end
