class ListsController < ApplicationController
  def new
    @list = List.new
    # viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する
  end

  def index #データの一覧を表示するためのアクション
   @lists = List.all
   
  end

  def show #データの詳細を表示するためのアクション
  @list = List.find(params[:id])
  end

  def edit #データを更新するためのフォームを表示するアクション
  end
  
  def create #データの追加・保存するためのアクション
   list = List.new(list_params)
   #データを受け取って新規登録するためのローカル変数
   list.save
   redirect_to list_path(list.id)
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :bo)
  end
end
