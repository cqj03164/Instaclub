class Insta3sController < ApplicationController

before_action :authenticate_user!
before_action :set_insta3, only: [:edit, :update, :destroy]

  def index
      @Insta3s = Insta3.all
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
      # 一覧画面へ遷移して"投稿を作成しました！"とメッセージを表示します。
      redirect_to insta3s_path, notice: "投稿しました！"
 
    else
      # 入力フォームを再描画します。
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
    render :new if @insta3.invalid?
  end

 private
  def insta3s_params
    params.require(:insta3).permit(:title, :content, :user_id)
  end
  
  def set_insta3
    @insta3 = Insta3.find(params[:id])
  end
 
end
