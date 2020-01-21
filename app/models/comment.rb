class Comment < ApplicationRecord
    belongs_to :user
    # belongs_to :story
    
    # def selectCommentsByArticleKey(article_key)
    #     Comment.where({ article_key: article_key})
    # end

    # def createComment(insert) # insert is an object with keys {article_key, content, user_id}
    #     Comment.create({:article_key => article key, :content => content, :user_id => user_id})
    # end
end
