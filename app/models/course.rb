class Course < ApplicationRecord
  validates :title, :short_description, :lang, :price, :level,  presence: true
  validates :description, presence: true, length: { :minimum => 5 }

  def to_s
    title
  end

  has_rich_text :description

  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

end
