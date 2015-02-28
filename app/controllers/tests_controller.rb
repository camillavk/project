class TestsController < ApplicationController

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.create(params.require(:test).permit(:name))
    redirect_to '/'
  end

  def show
    # @tests = Test.all
    @test = Test.find(params[:id])
    # @testsession = Testsession.new
    # @questions = Question.all
    # @question = @questions.sample(5)
    # ids = @questions.pluck(:id)
    # @question = Question.find(ids.sample(5))
  end

end
