class AddArticleReferencesToBanners < ActiveRecord::Migration
  def change
    add_reference :banners, :article, index: true, foreign_key: true
  end
end
