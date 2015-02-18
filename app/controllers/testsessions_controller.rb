class TestsessionsController < ApplicationController

  def new
    @test = Test.find(params[:test_id])
    @testsession = Testsession.new
    redirect_to action: :create
  end

  def create
    @test = Test.find(params[:test_id])
    @test.questions.each do |question|
      @test.testsessions.create user: current_user, question: question
    end
    redirect_to action: :index
  end

  def index
    @test = Test.find(params[:test_id])
    @questions = @test.questions
  end

  def show
    @testsession = Testsession.find(params[:id])
    @test = Test.find(params[:test_id])
    @questions = @test.questions
  end

  def update
    @question = Question.find(params[:question_id])
    @question.update(params.require(:testsession).permit(:answer))
  end

  def edit
    @question = Question.find(params[:question_id])
    @question.update(params.require(:testsession).permit(:answer))
  end

end
