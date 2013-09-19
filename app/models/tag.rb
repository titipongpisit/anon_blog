class Tag < ActiveRecord::Base
  validates :name, presence: true
  has_many :posts, :through => :tag_lookups
  has_many :tag_lookups
end
