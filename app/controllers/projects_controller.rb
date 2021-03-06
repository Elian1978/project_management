class ProjectsController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :new

    def index
      @projects = Project.all
      if params[:status] and params[:status] != 'all'
        @projects = @projects.where(status: params[:status])
      end
    end
  
    def new
      @project = Project.new
    end
  
    def create
      @project = Project.new(project_params)
      if @project.save
        redirect_to dashboard_path
      else
        render 'new'
      end
    end
  
    def destroy
      @project = Project.find(params[:id])
      if @project.destroy
        redirect_to dashboard_path
      end
    end
  
  
    private
  
    def project_params
      params.require(:project).permit(:name, :desription, :started_at, :ended_at, :status)
    end
  
  end
  