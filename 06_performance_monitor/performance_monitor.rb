# def measure interatons=1, &block
def measure interatons=1

	begin_time = Time.now
	
	interatons.times do
		yield
	end
	
	end_time = Time.now
	
	average_time = (end_time - begin_time)/interatons
end
