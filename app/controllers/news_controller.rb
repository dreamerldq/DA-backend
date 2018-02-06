class NewsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
      @news = News.new(user_params)
      if @news.save
        render json: @news
      else
        render '创建失败'
      end
    end

    def show
      @news = News.find(params[:id])
      render json: @news
    end

    def index
      @news = News.all
      render json:  @news
    end
    private
    def user_params
      params.require(:news).permit(:content, :title)
    end

  end
