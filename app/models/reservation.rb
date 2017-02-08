class Reservation < ApplicationRecord
  validates_presence_of :status
  belongs_to :traveler, class_name: "User", foreign_key: :user_id

  enum status: %w(pending confirmed canceled)
end