class TodolistsController < ApplicationController
  def new
    @list = List.new
  end


  def create
    # https://web-camp.online/lesson/curriculums/212/contents/1435
    # １. データを新規登録するためのインスタンス作成
    # ここのlistに@がないのは余計な事故を防ぐため
    list = List.new(list_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # ３. トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
#   list_paramsではフォームで入力されたデータを受け取っています。細かく見ていきましょう。
# paramsはRailsで送られてきた値を受け取るためのメソッドです。
# requireでデータのオブジェクト名(ここでは:list)を指定し、permitでキー（:title,:body）を指定しています。
# これにより、list_paramsの中にフォームで入力されたデータが格納されます。
end
