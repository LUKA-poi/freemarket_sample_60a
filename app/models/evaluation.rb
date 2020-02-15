class Evaluation < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_one :comment   
end
