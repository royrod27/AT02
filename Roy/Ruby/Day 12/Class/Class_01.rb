class	Base
	def initialize
		@value = 0
	end

	def any
		@value = 10
	end

	def some
		@value
	end
end
a = Base.new
p a.any
b = Base.new
p b.some