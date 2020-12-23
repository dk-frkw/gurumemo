class RecordsController < ApplicationController
  def index
    @records = Record.all.order("created_at DESC")
  end

  def new
    @record = Record.new
  end

  def create
  end
end
