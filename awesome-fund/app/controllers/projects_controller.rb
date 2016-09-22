class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])


    if current_user
      @pledge = @project.pledges.build
    end

  end

  def new
    @project = Project.new
    @reward = Reward.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def project_params

    params.require(:project).permit(:title, :description, :goal, :end_date, :user_id, rewards_attributes: [:benchmark, :description])

  end
end
