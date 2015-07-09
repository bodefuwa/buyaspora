class SubCultureSerializer < ActiveModel::Serializer
  attributes :id
  has_one :culture
end
