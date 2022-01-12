class Event < ApplicationRecord
  belongs_to :user
  has_many :tickets

  validates :name, presence: true
  validates :event_date, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
