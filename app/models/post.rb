class Post < ActiveRecord::Base
  include Slugifier

  has_and_belongs_to_many :tags

  before_validation :set_slug
  before_update :set_slug
  before_save :set_slug

  # validation
  validates_presence_of :title
  validates_presence_of :text
  validates_presence_of :slug
  validates_length_of :text, :minimum => 100

  def set_slug
    self.slug = generate_slug(self.title)
  end
end
