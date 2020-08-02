class Code < ApplicationRecord
	belongs_to :user
	attachment :post_image
end
