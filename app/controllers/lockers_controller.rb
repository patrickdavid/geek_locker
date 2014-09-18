class LockersController < ApplicationController
  before_action :authenticate_user!

  def index
    @lockers = Locker.all
  end

  def new
    @locker = Locker.new
  end

  def create
    @locker = Locker.create(locker_params)
    if @locker
      redirect_to locker_path(@locker), notice: 'Locker Created'
    else
      render 'new'
    end
  end

  def show
    @locker = Locker.find(params[:id])
  end

  def update
    if @locker.update(locker_params)
      redirect_to locker_path(@locker), notice: "Your locker has been updated"
    else
      render 'edit'
    end
  end

  def edit
    @locker = Locker.find(params[:id])
  end

   def destroy
    @locker = Locker.find(params[:id])
    @locker.destroy
    flash[:notice] = "The locker has been deleted."
    redirect_to lockers_path
  end

private
  def locker_params
    params.require(:locker).permit(:name)
  end

end
