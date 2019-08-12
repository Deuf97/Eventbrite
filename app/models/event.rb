class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :user
  validates :start_date, presence: true, :greater_than_or_equal_to
  validates :duration, presence: true
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 250..1000 }
  validates :price, presence: true, length: { in: 1..1000 }
  validates :location, presence: true
end
