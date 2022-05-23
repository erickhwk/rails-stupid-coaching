class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    case
    when question.end_with?("?")
      "Silly question, get dressed and go to work!"
    when question.downcase == "i am going to work"
      "Great!"
    else
       "I don't care, get dressed and go to work!"
    end
  end
end
