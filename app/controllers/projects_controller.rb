class ProjectsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
      @project = Project.new(project_params)
      if @project.save
        render json: @project
      else
        render json: '创建失败'
      end

    end

    def show
      @project = Project.find(params[:id])
      render json: @project
    end

    def index
      @project = Project.all
      render json: @project
    end
    private
    def project_params
      params.require(:project).permit(:projectName, :projectType, :instructor,
                                         :businessMentor, :unit, :title,
                                      :productDescription,:productTechnicalLevel,
                                      :noveltyProducts,:advanced,:productCompetitive
                                         )
    end
  end

