class QuestionsController < ApplicationController

  def index
    @test = Test.find(params[:test_id])
    # @questions = @test.questions.find(params[:id])
  end

  def new
    @test = Test.find(params[:test_id])
    @question = Question.new
  end

  def create
    @test = Test.find(params[:test_id])
    @question = @test.questions.create(params.require(:question).permit(:question, :answer, :image))
    @question.save
    redirect_to '/'
  end

  def show
    @question = Question.find(params[:id])
    @test = Test.find(params[:test_id])
  end

end
