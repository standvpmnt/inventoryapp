class CobasReagent < ApplicationRecord
	# This set of code to be uncommented after testing etc is done
	validates :test_code, presence: true
	validates :unique_identifier, uniqueness: true


end