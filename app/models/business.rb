class Business < ActiveRecord::Base
  has_one :business_detail
  belongs_to :categories
  belongs_to :subcategories
end
