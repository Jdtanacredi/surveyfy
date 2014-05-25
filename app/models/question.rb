class Question
  include Mongoid::Document
  include Mongoid::Timestamps # added after creation

  field :type, type: String
  field :question, type: String
  field :answer

  def multiple_choice
    self.type = 'Multiple Choice'
    self.question = x #set this later
    self.answer = {
        
    }

  end


end
