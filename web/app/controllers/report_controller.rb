# class controller
class ReportController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @reports = Report.all
  end

  def reports
    # puts(request.raw_post)
    # JSON PARSE
    # future for slack report
    @report = Report.new(body: request.raw_post)
    @report.save
    render json: JSON.pretty_generate(@report), status: :ok
  end
end
