class God::GodController < ApplicationController
  before_action :authenticate_admin!
  
  def home
    @teachers = Teacher.all
  end
end
