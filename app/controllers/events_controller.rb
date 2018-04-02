class EventsController < ApplicationController
    skip_before_action :authorized

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        @user_event = UserEvent.new(user_id: current_user.id, event_id: @event.id)
          if @user_event.save
            final = {event: @event, user_event: @user_event}
            format.json {render json: final}
          else
            format.html { render :new }
            format.json { render json: @user_event.errors, status: :unprocessable_entity }
          end
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end

    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :date, :occasion, :price_limit)
    end
end
