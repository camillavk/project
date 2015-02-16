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
    @test = Test.find(params[:id])
  end

end
