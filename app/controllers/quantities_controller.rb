class QuantitiesController < ApplicationController
  def new
    p "3" * 20
    p params
    p "3" * 20
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
  end
end
