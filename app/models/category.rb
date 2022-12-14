class Category < ApplicationRecord

  has_many :tasks # association niya with tasks
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
