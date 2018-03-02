class ProfessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @profession = Profession.new(profession_params)

    if @profession.save
      render json: @profession
    else
      render json: '创建失败'
    end

  end

  def update
    @profession = Profession.find_by_sql("SELECT * FROM professions WHERE (professions.professionName = '#{params[:id]}')")
    @aloneProfession = @profession[0]
    if @aloneProfession.update(profession_params)
      render json: @aloneProfession
    else
      render json: @aloneProfession.errors
    end

  end

  def show
    @profession = Profession.find_by_sql("SELECT * FROM professions WHERE (professions.professionName = '#{params[:id]}')")
    render json: @profession
  end

  def index
    @profession = Profession.all
    render json: @profession
  end
  private
  def profession_params
    params.require(:profession).permit(:faculty, :professionIntroduction, :professionName,
                                   :professionalAdvantage, :professionalFeatures, :trainingPositioning,
                                   )
  end
end
