class VisitorsController < ApplicationController
  def search
    if params[:q].length > 0
      session[:visitors] = Visitor.select('id').like(params[:q]).map { |v| v.id }
    else
      session[:visitors] = nil
    end
    redirect_to root_url
  end

  def choose    
    session[:currentvisitor] = params[:id]
    redirect_to root_url
  end

  def new
    session[:currentvisitor] = nil
    redirect_to root_url
  end

  def update
    visitor = Visitor.find(params[:id])
    visitor.update!(visitor_params)
    redirect_to(root_url)
  end

  def create
    if !Visitor.create visitor_params
      flash[:error] = "Usuário não pôde ser salvo"
    end

    redirect_to root_url
  end

  private
  def visitor_params
    params.require(:visitor).permit(:nome, :documento, :avatar)
  end
end