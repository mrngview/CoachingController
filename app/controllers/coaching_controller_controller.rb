class CoachingControllerController < ApplicationController

  def home
  end

  def answer
  	@query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(inserted)
    if inserted.downcase == "i am going to work right now!"
      return ""
    elsif inserted.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
