def reverser
	yield.split(" ").map(&:reverse).join(" ")
end

def adder number=1, &block
	block.call + number
end

def repeater times_to_repeat=1, &block
	times_to_repeat.times do |i|
		block.call
	end
end

