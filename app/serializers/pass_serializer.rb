class PassSerializer < ActiveModel::Serializer
  attributes :id, :crud
  has_one :user
end
