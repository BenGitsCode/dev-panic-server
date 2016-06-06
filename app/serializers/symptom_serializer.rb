class SymptomSerializer < ActiveModel::Serializer
  attributes :id, :title, :solution, :url, :media, :private
end
