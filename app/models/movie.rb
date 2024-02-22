class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  before_destroy :check

  def check
    false
  end

  validates_associated :bookmarks
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
