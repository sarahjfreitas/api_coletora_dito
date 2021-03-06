class EventsController < ApplicationController
  def index
    if params[:term].present?
      eventos = Event.where("name ilike '%#{params[:term]}%'").order('timestamp DESC')
    else 
      eventos = Event.order('timestamp DESC')
    end
    json_response(eventos)
  end

  def create
    evento = Event.create!(name: params[:event], timestamp: params[:timestamp])
    json_response(evento, :created)
  end
end
