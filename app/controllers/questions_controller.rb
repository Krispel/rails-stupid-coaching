class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @answer = ''
    if @question == 'I am going to work'
      @answer = 'Great!'
      return @answer
    elsif @question.include?"?"
      @answer = 'Silly question, get dressed and go to work!'
      return @answer
    else
      @answer = "I don't care, get dressed and go to work!"
      return @answer
    end
  end
end
