class InvestmentsController < ApplicationController
  before_action :set_investment, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:index,:create,:new]

  respond_to :html

  def index
    @investments = @project.investments
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
    @investment.user_id = current_user.id
    @investment.project_id = @project.id
    @investment.save
    respond_with(@investment, location:  project_investment_path(@project,@investment))
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
    def set_project
       @project = Project.find_by_slug(params[:project_id])
    end

    def set_investment
      @investment = Investment.find(params[:id])
    end

    def investment_params
      params.require(:investment).permit(:value)
    end
end
