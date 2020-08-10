class Code < ApplicationRecord
	belongs_to :user
	attachment :post_image

	enum category:{
		Category: 0,
		Casual: 1,
		Conservative: 2,
		Street: 3,
		Mode: 4,
		Ethnic: 5,
		Rock: 6,
		Other: 7,
	}
end
