class PagesController < ApplicationController
  def entryhandling
    # session[:currentvisitor] = nil
    # session[:visitors] = nil

    @history = History.new

    @gabinetes = Gabinete.all

    if session[:currentvisitor]
      @currentvisitor = Visitor.find(session[:currentvisitor]) 
    else
      @currentvisitor = Visitor.new
    end
    if session[:visitors]
      @visitors = Visitor.find(session[:visitors])
    else
      @visitors = Visitor.all
    end
    @inBuilding = Visitor.like in_building: true

    render 'entryhandling'
  end

  def entryreport
    render 'entryreport'
  end
end
