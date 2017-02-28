class Task < ApplicationRecord
  has_many :comments,
  -> { extending WithUserAssociationExtension },
   dependent: :destroy
  belongs_to :user

  validates :description, presence: true
  validates :priority, inclusion: (1..3)

end
