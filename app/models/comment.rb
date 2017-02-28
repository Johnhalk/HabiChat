class Comment < ApplicationRecord

  belongs_to :task
  belongs_to :user

  validates :comments, presence: true

end
