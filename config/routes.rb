Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' #新しいデータの取得 => コントローラのcreate(データの追加・保存)を実行
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  get '/top' => 'homes#top'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
