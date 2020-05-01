# frozen_string_literal: true

# AdminController
class AdminController < ApplicationController
  before_action :authenticate_user!, only: %i[index new edit update destroy]
  def index
    @posts = Yazilar.order('id DESC')
  end

  def new
    @yazilar = Yazilar.new(status: '0')
    @yazilar_count = Yazilar.count + 1
  end

  def create
    @yazilar = Yazilar.new(subject_params)
    if @yazilar.save
      flash[:notice] = 'Yazi basariyla olusturuldu.'
      redirect_to(action: 'index')
    else
      @yazilar_count = Yazilar.count
      render('new')
    end
  end

  def edit
    @article = Yazilar.find(params[:id])
  end

  def update
          @article = Yazilar.find(params[:id])
          if @article.update(article_params)
           flash[:notice] = "Article was updated"
           redirect_to article_path(@article)
          else
           flash[:notice] = "Article was not updated"
           render 'edit'
          end
  end

  def show
    @posts = Yazilar.find(params[:id])
    # @posts = Yazilar.order('id DESC')
  end

  def delete
    @posts = Yazilar.find(params[:id])
  end

  def destroy
    silinecek_yazi = Yazilar.find(params[:id])
    silinecek_yazi.destroy
    flash[:notice] = "'#{silinecek_yazi.title}' basarili bir sekilde silindi"
    redirect_to(action: 'index')
  end

  def kullanicilar
    @user = User.order('id DESC')
  end

  def yazilar
    @posts = Yazilar.order('id DESC')
  end

  private

  def subject_params
    params.fetch(:yazilar, {}).permit(:title, :body, :status, :created_at)
  end
end
