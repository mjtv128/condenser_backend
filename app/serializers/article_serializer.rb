class ArticleSerializer < ActiveModel::Serializer
    attributes :title, :article_key, :user_id
end