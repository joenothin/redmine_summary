class Note < ActiveRecord::Base
  belongs_to :summary
	
	# validates :title, presence: true,
	# 									length: { minimum: 5}
	# validates :status, presence: true,
	# 									length: { minimum: 5}
end
