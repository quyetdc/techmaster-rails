class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :completed_at

  # attributes :completed

  has_many :notes

  # def completed
    # completed_at.present?
  # end
end
