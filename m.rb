class Entity
	def initialize
		x = y = z = 0
		x_vel = y_vel = 0
		x_accel = y_accel = 0
		image = []
	end
end

class Main
	def create_window(height, width)
		window = Array.new(height) {Array.new(width,'*') }
		$window = window
		@width = width
		@height = height
	end
	def update(origin, &block)
		@origin = origin
		row,column = @origin / @width, @origin % @width
		yield(@origin)
	end
end

e = Main.new
e.create_window(11,11)
p $window 
e.update(73) { |e| p "#{e}"}
