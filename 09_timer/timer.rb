class Timer
	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def seconds=(seconds)
		@seconds=seconds
	end

	def time_string
		this_time = Time.new(2015, 05, 14, 0, 0, 0)
		this_time += @seconds
		this_time.strftime("%T")
	end
end
