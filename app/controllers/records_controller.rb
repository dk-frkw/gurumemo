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

  private

  def record_params
    params.require(:record).permit(:store_name,:image,:genre_id,:score,:address,:station,:phone_number,:holiday,:memo,:latitude,:longitude).merge(user_id: current_user.id)
  end
end
