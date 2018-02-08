class StudiosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @studio = Studio.new(studio_params)
    if @studio.save
      render json: @studio
    else
      render json: '创建失败'
    end

  end

  def index
    @studio = Studio.all
    render json: @studio
  end
  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
    render json: '删除成功'
  end

  def show
    @studio = Studio.find(params[:id])
    render json: @studio
  end
  private
  def studio_params
    params.require(:studio).permit(:name, :course, :research,
                                 :address, :introduction, :principal,
                                 :studioName)
  end
end
