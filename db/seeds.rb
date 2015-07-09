# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CategoryType.delete_all
Category.delete_all
SubCategory.delete_all
Culture.delete_all
SubCulture.delete_all

CategoryType.create([
  {name: 'Products'}, 
  {name: 'Services'},
  {name: 'Events'},
  {name: 'Food'}
])

products  = CategoryType.find_by(name: 'Products')
services  = CategoryType.find_by(name: 'Services')
events    = CategoryType.find_by(name: 'Events')
food      = CategoryType.find_by(name: 'Food')

products.categories.create([
  {name: 'Retail'},
  {name: 'Wholesale'}
])

retail    = Category.find_by(name: 'Retail')
wholesale   = Category.find_by(name: 'Wholesale')

retail.sub_categories.create([
  {name: 'Grocery'},
  {name: 'Auto'},
  {name: 'Apparel'},
  {name: 'Beauty'}
])

wholesale.sub_categories.create([
  {name: 'Grocery'},
  {name: 'Auto'},
  {name: 'Apparel'},
  {name: 'Beauty'}
])

services.categories.create([
  {name: 'Shipping'},
  {name: 'Professional'},
  {name: 'Local'},
  {name: 'Business 2 Business'}
])

shipping      = Category.find_by(name: 'Shipping')
professional  = Category.find_by(name: 'Professional')
local         = Category.find_by(name: 'Local')
b2b           = Category.find_by(name: 'Business 2 Business')

shipping.sub_categories.create([
  {name: 'Import'},
  {name: 'Export'},
  {name: 'Industrial'},
  {name: 'Auto'},
  {name: 'Apparel'}
])

professional.sub_categories.create([
  {name: 'Accounting'},
  {name: 'Medical'},
  {name: 'Insurance'},
  {name: 'Legal'},
  {name: 'Real Estate'},
  {name: 'Auto'},
  {name: 'Technology'},
  {name: 'Home'},
  {name: 'Design'}
])

local.sub_categories.create([
  {name: 'Eatery'},
  {name: 'Maid Services'},
  {name: 'Child Care'},
  {name: 'Lawn Services'},
  {name: 'Plumbing'},
  {name: 'Home Improvement'},
  {name: 'Garment Care'},
  {name: 'Auto'},
  {name: 'Apparel'},
  {name: 'Beauty'}
])

b2b.sub_categories.create([
  {name: 'Import'},
  {name: 'Export'},
  {name: 'Industrial'},
  {name: 'Auto'},
  {name: 'Apparel'}
])

events.categories.create([
  {name: 'Planners'},
  {name: 'Religious'},
  {name: 'DJs'},
  {name: 'MCs'},
  {name: 'Catering'},
  {name: 'Makeup and Headwrap'},
  {name: 'Equipments and Rentals'},
  {name: 'Music'},
  {name: 'Attire'},
  {name: 'Photography'}
])

food.categories.create([
  {name: 'Arab'},
  {name: 'Kosher'},
  {name: 'Latin'},
  {name: 'Caribbean'},
  {name: 'Asian'},
  {name: 'African'}
])

Culture.create([
  {name: 'Arab'},
  {name: 'Hebrew'},
  {name: 'Latin'},
  {name: 'Caribbean'},
  {name: 'Asian'},
  {name: 'African'}
])

arab      = Culture.find_by(name: 'Arab')
hebrew    = Culture.find_by(name: 'Hebrew')
latin     = Culture.find_by(name: 'Latin')
caribbean = Culture.find_by(name: 'Caribbean')
asian     = Culture.find_by(name: 'Asian')
african   = Culture.find_by(name: 'African')

asian.sub_cultures.create([
  {name: 'Chinese'},
  {name: 'Japanese'},
  {name: 'Vietnames'},
  {name: 'Korean'},
  {name: 'Philipines'},
  {name: 'Indian'}
])

latin.sub_cultures.create([
  {name: 'Mexican'},
  {name: 'Peruvian'},
  {name: 'Salvadorian'},
  {name: 'Portugese'}
])

caribbean.sub_cultures.create([
  {name: 'Greater Antilles'},
  {name: 'Lesser Antilles'},
  {name: 'Leeward Islands'},
  {name: 'Windward Islands'},
  {name: 'Leeward Antilles'},
  {name: 'Jamaican'},
  {name: 'Trinidadian'},
  {name: 'East Caribbean'}
])

african.sub_cultures.create([
  {name: 'East'},
  {name: 'West'},
  {name: 'South'},
  {name: 'North'}
])
