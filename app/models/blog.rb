class Blog < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, length: {in: 1..140}
end
