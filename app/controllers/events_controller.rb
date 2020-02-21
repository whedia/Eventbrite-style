class EventsController < ApplicationController
  
  def index 
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(title: params[:title], description: params[:description], duration: params[:duration], start_date: params[:start_date], price: params[:price], location: params[:location])
  
    if @event.save

      @success = true
      flash[:success] = @success
      redirect_to static_pages_index_path

    else

      @event.errors.messages

    end
  end
end

