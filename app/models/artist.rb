class Artist < ApplicationRecord
  def self.order_by_name
    order(:name)
  end
  has_many :songs, dependent: :destroy
  accepts_nested_attributes_for :songs
end
