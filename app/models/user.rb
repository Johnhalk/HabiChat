class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessor :username

  has_many :tasks, dependent: :destroy
  has_many :comments
  has_many :commented_tasks, through: :comments, source: :task
  has_many :messages

  validates :username, presence: true, uniqueness: true

end
