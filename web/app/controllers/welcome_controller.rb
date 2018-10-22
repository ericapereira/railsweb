class WelcomeController < ApplicationController
  def homepage
    @reports = Report.all
  end
end
