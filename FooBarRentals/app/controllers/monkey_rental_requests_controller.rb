class MonkeyRentalRequestsController < ApplicationController

  def index
    @monkey = Monkey.find(params[:monkey_id])
    @requests = @monkey.monkey_rental_requests
    render 'monkeys/show'
  end

  def new
    render 'monkeys/show'
  end

  def create
    @monkey = Monkey.find(params[:monkey_id])
    @requests = @monkey.monkey_rental_requests
    fparams = request_params
    fparams[:monkey_id] = params[:monkey_id]
    @new_request = MonkeyRentalRequest.new(fparams)
    if @new_request.save
      render 'monkeys/show'
    else
      p @new_request.errors.full_messages
      render 'monkeys/show'
    end
  end

  def request_params
    params.require(:monkey_rental_request).permit(:start_date, :end_date)
  end
end
