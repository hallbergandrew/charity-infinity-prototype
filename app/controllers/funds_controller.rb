class FundsController < ApplicationController
  def index
    @funds = Fund.all
  end

  def show
    @fund = Fund.find(params[:id])
    @charities = Charity.where(fund_id: @fund)
  end
end
