class YazilarController < ApplicationController
  before_action :authenticate_user!
  def index
      @posts = Yazilar.order('id DESC')
  end

  def new
    @yazilar = Yazilar.new({:status => '0'})
    @yazilar_count = Yazilar.count + 1
  end

  def create
    @yazilar = Yazilar.new(subject_params)
    if @yazilar.save
      flash[:notice] = "Yazi basariyla olusturuldu."
      redirect_to(:action => 'index')
    else
      @yazilar_count = Yazilar.count
      render('new')
    end
  end

  def show
    @posts = Yazilar.find(params[:id])
  end

  def edit
    @yazi = Yazilar.find(params[:id])
    @updated = @yazi.update(subject_paramas)
  end

  # def create
  #   @posts = Yazilar.new(section_params)
  #   if @posts.save
  #     flash[:notice] = "Yazilar created successfully."
  #     redirect_to(:action => 'index')
  #   else
  #     @posts = Yazilar.order('id DESC')
  #     @posts_count = Yazilar.count + 1
  #     render('new')
  #   end
  # end
  # def new
  #   @posts = Yazilar.new({:ad => "Default"})
  #   @pages = Page.order('id DESC')
  #   @section_count = Section.count + 1
  # end
  private
    def subject_params
      params.fetch(:yazilar).permit(:title,:body,:status,:created_at)
    end
end
