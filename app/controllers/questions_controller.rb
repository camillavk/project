class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params.require(:question).permit(:question, :answer))
  end

  def show
    @question = Question.find(params[:id])
    @test = Test.find(params[:test_id])
  end

end
