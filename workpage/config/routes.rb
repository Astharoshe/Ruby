Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # /로 접속하면 home controller에 index 실행
  # home#폴더 index 페이지
  get '/index' => 'home#index'
  get '/add' => 'calculator#add'
  post '/result' => 'calculator#result'
  get '/result/:first/:second' => 'calculator#result'
end
