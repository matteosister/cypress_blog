class Post < ActiveRecord::Base
  include Slugifier


  validates :title, :presence => true
  validates :text, :presence => true
  validates :slug, :presence => true
  validates_length_of :text, :minimum => 100

  has_and_belongs_to_many :tags
end
