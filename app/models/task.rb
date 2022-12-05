class Task < ApplicationRecord
  belongs_to :category
  
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
