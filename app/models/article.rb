class Article < ActiveRecord::Base

  include Article::RenderArticle

  before_save :render_article

  attr_accessible :name, :content, :rendered_content, :published_on, :tag_list
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
      Tag.where(name: tag.strip.downcase).first_or_create!
    end
  end
end
