class Transfer < ApplicationRecord
  belongs_to :user
  belongs_to :transfer_type

  validates :description, presence: true
  validates :value, presence: true
  validates :hapenned_on, presence: true
end
