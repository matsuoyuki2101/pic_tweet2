class Tweet < ApplicationRecord
   validates :text, presence: true
   belongs_to :user
   has_many :comments  # commentsテーブルとのアソシエーション

   # imageも空で投稿できないように追記
   validates :text, :image, presence: true

end
