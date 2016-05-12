class Quiz
	def initialize(answer)
		@answer = answer

	def result 
		if @answer=="Leader"
			return "CEO"
		elsif @answer=="Social"
			return "Entrepeneur"
		elsif @answer=="Adventerous"
			return "World Traveler"
		elsif @answer=="Lazy"
			return "Parents' Basement"
	end
