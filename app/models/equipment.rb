class Equipment
	def initialize(id)
		@id = id
	end

	def name
		@id.reverse
	end
end