class RecordsController < ApplicationController
  def index
    @records = Record.all.order("created_at DESC")
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
    unless current_user.id == @record.user_id
      redirect_to action: :index
    end
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to record_path
    else
      render :edit
    end
  end

  def destroy
    record = Record.find(params[:id])
    record.destroy
    redirect_to root_path
  end

  private

  def record_params
    params.require(:record).permit(:store_name,:image,:genre_id,:score,:address,:station,:phone_number,:holiday,:memo,:latitude,:longitude).merge(user_id: current_user.id)
  end
end
