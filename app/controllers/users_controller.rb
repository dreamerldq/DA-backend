class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render '创建失败'
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def index
    case params[:type]
    when 'DigitalMediaTechnologyTeam'
    @user = User.find_by_sql("SELECT * FROM users WHERE (users.professionalTeam = '数字媒体技术')")
        render json: @user
      when 'AnimationTeam'
        @user = User.find_by_sql("SELECT * FROM users WHERE (users.professionalTeam = '动画')")
        render json: @user
      when 'DigitalMediaArtTeam'
        @user = User.find_by_sql("SELECT * FROM users WHERE (users.professionalTeam = '数字媒体艺术')")
        render json: @user
      when 'FilmPhotographyTeam'
        @user = User.find_by_sql("SELECT * FROM users WHERE (users.professionalTeam = '影视设计与制作')")
        render json: @user
      when 'VisualCommunicationDesignTeam'
        @user = User.find_by_sql("SELECT * FROM users WHERE (users.professionalTeam = '视觉传达设计')")
        render json: @user
    end
  end
  private
    def user_params
      params.require(:user).permit(:username, :password, :education,
                                   :email, :graduatedSchool, :jobTitle,
                                   :name, :phone, :professionalTeam,
                                   :researchDirection)
    end

end
