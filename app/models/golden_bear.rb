class GoldenBear < ApplicationRecord
  has_many :fish, foreign_key: :bear_id
end
