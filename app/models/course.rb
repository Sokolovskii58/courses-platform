class Course < ApplicationRecord
  validates :title, :short_description, :lang, :price, :level,  presence: true
  validates :description, presence: true, length: { :minimum => 5 }

  belongs_to :user
  has_many :lessons, dependent: :destroy

  def to_s
    title
  end

  has_rich_text :description


  extend FriendlyId
  friendly_id :title, use: :slugged

  include PublicActivity::Model
  tracked owner: Proc.new{ |controller, model| controller.current_user }

end
