class Fish < ApplicationRecord
  belongs_to :bear, class_name: :GoldenBear
end
