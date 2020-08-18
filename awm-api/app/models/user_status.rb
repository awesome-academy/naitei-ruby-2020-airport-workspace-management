class UserStatus < ApplicationRecord
  has_many :users, dependent: :nullify

  validates :name, presence: true, uniqueness: true, allow_nil: true
  validates :active, inclusion: {presence: true, in: [true, false]}
end
