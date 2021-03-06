class PledgesController < ApplicationController
  before_action :load_project

  def index
    @pledges = Pledge.all
  end

  def new
    @pledge = Pledge.new
    @pledge.user_id = current_user.id
  end

  def create
    # @pledge = @project.pledges.build(pledge_params)
    @pledge = Pledge.new(pledge_params)
    @pledge.project_id = params[:project_id]
    @pledge.user_id = current_user.id

    # @pledge = Pledge.new(
    # amount: params[:pledge][:amount],
    # project_id: @project_id
    # )

    if @pledge.save
      if @project.total == nil
        @project.total = @pledge.amount
        @project.save

      else
        @project.total += @pledge.amount
        @project.save
      end
      redirect_to project_path(@project), alert: 'Pledge pledged!'
    else
      redirect_to project_path(@project)
    ##  render '/pledges/new'
    end
  end

  def edit
  end

  def show
    @pledge = Pledge.find(params[:id])
  end

  private
  def pledge_params
    params.require(:pledge).permit(:amount)
  end



  def load_project
    @project = Project.find(params[:project_id])
  end
end
