Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' #新しいデータの取得 => コントローラのcreate(データの追加・保存)を実行
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
