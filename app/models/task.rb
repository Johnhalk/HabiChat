class Task < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :description, presence: true
  validates :priority, inclusion: (1..3)

end
