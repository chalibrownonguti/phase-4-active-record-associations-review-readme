class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    tag = Tag.last
    tag.posts
    #=> [#<Post @id=2>, #<Post @id=4>]
end
