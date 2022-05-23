class Tweet < ApplicationRecord
  belongs_to :user
  validates :body, length: { in: 5..200 }, presence: true
end
