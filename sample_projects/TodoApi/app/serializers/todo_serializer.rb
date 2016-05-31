# enable caching in development mode
# rails dev:cache

class TodoSerializer < ActiveModel::Serializer
  cache key: 'todo', expires_in: 24.hours

  attributes :id, :title, :completed_at

  # attributes :completed

  has_many :notes

  # def completed
    # completed_at.present?
  # end
end
