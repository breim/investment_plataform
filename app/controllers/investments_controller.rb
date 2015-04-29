class InvestmentsController < ApplicationController
  before_action :set_investment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @investments = Investment.all
    respond_with(@investments)
  end

  def show
    respond_with(@investment)
  end

  def new
    @investment = Investment.new
    respond_with(@investment)
  end

  def edit
  end

  def create
    @investment = Investment.new(investment_params)
    @investment.save
    respond_with(@investment)
  end

  def update
    @investment.update(investment_params)
    respond_with(@investment)
  end

  def destroy
    @investment.destroy
    respond_with(@investment)
  end

  private
    def set_investment
      @investment = Investment.find(params[:id])
    end

    def investment_params
      params.require(:investment).permit(:project_id, :user_id, :value)
    end
end
