class PledgesController < ApplicationController
  before_action :load_project

  def index
    @pledges = Pledge.all
  end

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = @project.pledges.build(pledge_params)
    @pledge.user = current_user

    # @pledge = Pledge.new(
    # amount: params[:pledge][:amount],
    # project_id: @project_id
    # )

    if @pledge.save
      redirect_to projects_path, alert: 'Pledge pledged!'
    else
      render 'projects/show'
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
