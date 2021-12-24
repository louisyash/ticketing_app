class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :event_date, presence: true
  validates :address, presence: true
end
