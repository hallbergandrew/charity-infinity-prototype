class FundsController < ApplicationController
  def index
    @funds = Fund.all
  end
end
