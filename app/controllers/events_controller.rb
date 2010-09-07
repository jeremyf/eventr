class EventsController < ApplicationController
  respond_to :xml, :json, :html, :ics
  def index
    @events = Event.all.paginate(:page => params[:page])
    respond_with(@events)
  end
end