class Item < ApplicationRecord
	has_many :reviews
	belongs_to :user

	attachment :image
end
