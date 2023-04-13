class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  def index
    @pictures = Picture.all 
  end

  def show
  end

  def new
    @picture = Picture.all
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def edit
  end

  def create 
    @picture = current_user.pictures.build(picture_params)
    if params[:back]
      render :new 
    else
      if @picture.save 
        redirect_to pictures_path, notice: "作成しました!"
      else
        # @pictures = Picture.all
        render :new 
      end
    end
  end

  def update 
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "編集しました!"
    else
      render :new 
    end
  end

  def destroy 
    @picture.destroy 
    redirect_to pictures_path, notice: "削除しました!"
  end

  def confirm 
    @blog = current_user.pictures.build(picture_params)
    # render :new #if @picture.invalid?
  end

  private 

  def picture_params
    params.require(:picture).permit(:title, :content, :image, :image_cache)
  end
  
  def set_picture 
    @pictures = Picture.all
    @picture = Picture.find(params[:id])
  end
end
