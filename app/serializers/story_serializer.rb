class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :image, :user_id, :created_at
end
