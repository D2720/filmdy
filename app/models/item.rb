class Item < ApplicationRecord
	has_and_belongs_to_many :directors
	has_and_belongs_to_many :actors
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :tags
end
