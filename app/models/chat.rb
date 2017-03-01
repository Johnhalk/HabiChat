class Chat < ApplicationRecord

  has_many :messages, dependent: :destroy
  validates :topic, presence: true, uniqueness: true, case_sensitive: false

end
