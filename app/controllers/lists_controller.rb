class ListsController < ApplicationController
  def new
    @list = List.new
    # viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する
  end

  def index
  end

  def show
  end

  def edit
  end
end
