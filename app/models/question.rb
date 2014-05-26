class Question
  include Mongoid::Document
  include Mongoid::Timestamps # added after creation

  field :type, type: String
  field :question, type: String
  field :answer

  def multiple_choice
    self.type = 'MC'
    self.question = x #set this later
    self.answer = {

    }
  def short_answer
    self.type = 'SA'
    self.question = x #set this later
    self.answer = current_answer
  end

  def true_false
    self.type = 'TF'
    self.question = x
    self.answer = current_answer
  end

  end
end
