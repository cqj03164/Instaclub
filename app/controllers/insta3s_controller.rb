class Insta3sController < ApplicationController

before_action :authenticate_user!
before_action :set_insta3, only: [:edit, :update, :destroy]

  def index
      @Insta3s = Insta3.all
      @users = User.all
  end
  
  def new
    if params[:back]
      @insta3 = Insta3.new(insta3s_params)
    else
      @insta3 = Insta3.new
    end
  end  

  
  def create
    @insta3 = Insta3.new(insta3s_params)
    @insta3.user_id = current_user.id
    
    if @insta3.save
      redirect_to insta3s_path, notice: "投稿しました！"
      #NoticeMailer.sendmail_insta3(@insta3).deliver
    else
      render 'new'
    end
  end

  def edit
    @insta3 = Insta3.find(params[:id])
  end
  
  def update
    @insta3 = Insta3.find(params[:id])
    
    if @insta3.update(insta3s_params)
    redirect_to insta3s_path, notice: "投稿を更新しました！"
    else
      render 'edit'
 　  end
  end
  
  def destroy
    @insta3 = Insta3.find(params[:id])
    @insta3.destroy
    redirect_to insta3s_path, notice: "投稿を削除しました！"
  end

  def confirm
   @insta3 = Insta3.new(insta3s_params)
      if @insta3.invalid?
       render:new
      end
  end

 private
  def insta3s_params
    params.require(:insta3).permit(:title, :image, :image_cache, :content, :user_id)
  end
  
  def set_insta3
   @insta3 = Insta3.find(params[:id])
  end
end 
