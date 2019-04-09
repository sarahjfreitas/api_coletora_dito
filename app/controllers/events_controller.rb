class EventsController < ApplicationController
  def index
    if params[:term].present?
      eventos = Event.where("name like '%#{params[:term]}%'").order('timestamps DESC')
    else 
      eventos = Event.order('timestamps DESC')
    end
    json_response(eventos)
  end

  def create
    evento = Event.create!(name: params[:event], timestamp: params[:timestamp])
    json_response(evento, :created, events_url)
  end
end
