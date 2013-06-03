class Article < ActiveRecord::Base
  attr_accessible :content, :name, :published_on, :tag_list
  has_many :taggings
  has_many :tags, through: :taggings

  validates_presence_of :name, :content, :published_on

  validates_uniqueness_of :name

  def short_content
    content.split(' ').slice(0, 100).join(' ') << " ......"
  end

  def self.tagged_with name
    Tag.find_by_name!(name).articles
  end

  def tag_list
    tags.map(&:name).map(&:capitalize).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |tag|
      Tag.where(name: tag.strip).first_or_create!
    end
  end
end
