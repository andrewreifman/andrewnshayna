class GuestsController < ApplicationController
  http_basic_authenticate_with name: "andrew", password: "bodyboss85", except: :create

  def index
    @attending_guests = Guest.where(attending: true)
    @total_guests = Guest.where(attending: true).collect{|x| x.guests}.sum
    @guests = Guest.all
    render 'index', layout: false
  end

  def create
    @guest = Guest.new(params[:guest])
    if @guest.save
      render 'create_success'
    else
      render 'create_failure'
    end
  end

  def destroy
    guest = Guest.find(params[:id])
    guest.destroy
    redirect_to guests_path
  end
end