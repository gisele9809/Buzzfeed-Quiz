class Quiz < ActiveRecord::Base
has_many :questions
has_many :answers, through: :question 

def get_results(answers)
	if answers.between?(1, 4)
		return "Parents Basement"
	elsif answers.between?(5, 7)
		return "World Traveler" 
	elsif answers.between?(8, 10)
		return "Entrepeneur" 
	elsif answers.between?(11, 12)
		return "CEO"
	end
end

end


class User < ActiveRecord::Base
has_many :results
end


class Result < ActiveRecord::Base
belongs_to :user
belongs_to :quiz 
end


class Question < ActiveRecord::Base
belongs_to :quiz
has_many :answers
end


class Answer < ActiveRecord::Base
belongs_to :question
has_one :quiz, through: :question
end

