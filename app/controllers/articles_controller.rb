class ArticlesController < ApplicationController

  def new
    
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end
  def create
    @article = Article.new(article_params)
    #首先创建一个类 Acticle 继承 ApplicationRecorcd类
    # 创建一个Article实例
    # parmas是方法最终会返回一个对象（包含着所有传递进来的from的信息）
    # 将创建出来的实例 赋值给@article这个实例变量（实例变量在实例的任何地方都可以被访问到）
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
    #执行 save方法，将表单保存在数据库中（如果save方法成功的话），save方法将会返回bool值

    #重定向  将用户指向show action
  end
  def show
    @article = Article.find(params[:id])
    #rials会将所有的实例变量都传递给views
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    render 'show'
  end
private
  #和所有的面向对象程序一样。ruby也有三种方法的访问限制
  # public private  protect
  # 私有方法需要放在所有的共有方法下面
  # rails中所有的 action 都必须是共有的方法，也就是说 rails 中创建的方法默认是共有的
  def article_params
    params.require(:article).permit(:title, :text)
    #很多时候可能会获取很多的表单元素 但是其中有一部分可能并不是我们需要的，所以需要对将要保存在数据库中的值加以限制
    # 这个方法用的地方会很多  更新 编辑  新建等操作
  end

end
