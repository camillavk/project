class TestsController < ApplicationController

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(params.require(:test).permit(:name))
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
