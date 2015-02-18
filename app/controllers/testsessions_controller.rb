class TestsessionsController < ApplicationController

  def new
    @test = Test.find(params[:test_id])
    @test.questions.each do |question|
      @test.testsessions.create user: current_user, question: question
    end
    # @questions = Question.where(test_id: @test.id).pluck(:id)
    # @testsession = [@test.testsessions.new]*2
    #   @testsession.user_id = current_user.id
    #   @testsession.question_id = @questions
    # @testsession.save
    # @questions = @test.questions
    redirect_to action: :index
  end

  # def create
  #   @test = Test.find(params[:test_id])
  #   @testsession = @test.testsessions.create
  #     @testsession.user_id = current_user
  #     @testsession.question_id = @test.questions
  #   @testsession.save
  #   @questions = @test.questions
  #   redirect_to action: :index
  # end

  def index
    # @testsession = Testsession.find(params[:id])
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
    @question.update(params.require(:testsession).permit(:answer, :question_id))
  end

  def edit
  end

end
