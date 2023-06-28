class Post < ApplicationRecord
    belongs_to :author
    has_many :post_tags
    has_many :tags, through: :post_tags

    post = Post.first
    post.tags
    #=> [#<Tag @id=1>, #<Tag @id=2>]
end
