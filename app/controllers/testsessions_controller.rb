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
    # @question = Question.find(params[:question_id])
    # @testsession = @question.testsessions.first
    @questions.each do |question|
      question.testsessions.each do |testsession|
        @testsession = testsession
      end
    end
    # @testsession = Testsession.find(params[:id])
  end

  def show
    @testsession = Testsession.find(params[:id])
    @test = Test.find(params[:test_id])
    @questions = @test.questions
  end

  def update
    @test = Test.find(params[:test_id])
    # @testsessions = @test.questions.testsessions
    @testsession = Testsession.find(params[:id])
    # @question = Question.find(params[:question_id])
    @testsession.update_column(:answer, params[:answer])
    redirect_to action: :results
  end

  def edit
    @test = Test.find(params[:test_id])
    @testsession = Testsession.find(params[:id])
    @question = Question.find(params[:question_id])
    # @testsession.update(params.require(:testsession).permit(:answer))
    # redirect_to action: :results
  end

  def results
    # @test = Test.find(params[:test_id])
    @testsessions = Testsession.find(params[:id])
    # @testsessions = @test.testsessions.where(user_id: current_user)
  end

end
