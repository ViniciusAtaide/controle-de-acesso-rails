class HistoriesController < ApplicationController
	def create
		v = Visitor.find(params[:history][:visitor_id])
		v.toggle(:in_building)
		v.save!

		if History.create history_params
			redirect_to root_url, message: 'Visita cadastrada'
		else
			redirect_to root_url, error: 'Nao foi possivel cadastrar a visita'
		end
	end

	private
	def history_params
		params.require(:history).permit(:visitor_id, :motivo, :gabinete_id, :tipo)
	end
end
