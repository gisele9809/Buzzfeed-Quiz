class Quiz < ActiveRecord::Base
has_many :questions
has_many :answers, through: :question 
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
ls