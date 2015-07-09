class Category < ActiveRecord::Base
  belongs_to :category_type
  has_many :businesses
  has_many :sub_categories
end
