class PagesController < ApplicationController
  def entryhandling
    # session[:currentvisitor] = nil
    # session[:visitors] = nil

    @history = History.new
    @histories = History.where created_at: (Time.now.beginning_of_day..Time.now.end_of_day) 

    @gabinetes = Gabinete.all

    if session[:currentvisitor]
      @currentvisitor = Visitor.find(session[:currentvisitor]) 
    else
      @currentvisitor = Visitor.new
    end
    if session[:visitors]
      @visitors = Visitor.find(session[:visitors])
    else
      @visitors = []
    end

    @inBuilding = Visitor.where in_building: true

    render 'entryhandling'
  end

  def entryreport
    @day = Time.now || Time.parse(session[:day])

    @histories ||= History.where created_at: (@day.beginning_of_day..@day.end_of_day)

    render 'entryreport'
  end
end
