# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ActiveRecord::Base
  has_one :banner

  attr_accessor :banner_id

  before_save :set_banner

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  private

  def set_banner
    if banner_id
      Banner.where(article_id: self.id).update_all({article_id: nil})

      banner = Banner.where(id: banner_id).first
      banner.update(article_id: self.id) if banner
    end
  end
end
