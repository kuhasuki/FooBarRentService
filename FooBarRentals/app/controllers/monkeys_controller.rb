class MonkeysController < ApplicationController
  def index
    @monkeys = Monkey.all
    render :index
  end

  def show
    @monkey = Monkey.find(params[:id])
    @requests = @monkey.monkey_rental_requests
    render :show
  end

  def new
    @monkey = Monkey.new
    render :new
  end

  def edit
    @monkey = Monkey.find(params[:id])
    render :edit
  end

  def create
    @new_monkey = Monkey.new(monkey_params)
    if @new_monkey.save
      redirect_to monkey_url(@new_monkey)
    else
      p @new_monkey.errors.full_messages
      render :new
    end
  end

  def update
    @monkey = Monkey.find(params[:id])
    if @monkey.update(monkey_params)
      redirect_to monkey_url(@monkey)
    else
      p @monkey.errors.full_messages

      render :edit
    end
  end

  private
  def monkey_params
    params.require(:monkey).permit(:birth_date, :color, :name, :sex, :description)
  end
end
