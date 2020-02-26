Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # /로 접속하면 home controller에 index Action 실행
  # home#폴더 index 페이지
  get '/index' => 'home#index'
  get '/add' => 'calculator#add'
  post '/result' => 'calculator#result'
  get '/result/:first/:second' => 'calculator#result'
	
  get '/board' => 'board#board'

  #읽기
  get '/read' => 'board#read'
  # 쓰기
  get '/write' => 'board#write'
  # 쓰기 처리
  post '/create' => 'board#create'

  # 수정
  get '/modify/:post_id' => 'board#modify'
  # 수정 적용
  post '/update/:post_id' => 'board#update'
  #삭제
  get 'delete/:post_id' => 'board#delete'
	
  # scaffolding 으로 생성
  resources :posts
	
  # postex
  get '/postex/index'  => 'postex#index'
  post '/postex/create' => 'postex#create'
  post '/postex/update/:id' => 'postex#update'
  get '/postex/delete/:id' => 'postex#delete'
  get '/postex/create_form'  => 'postex#create_form'
  get '/postex/update_form/:id' =>'postex#update_form'
  post '/reply/create/:article_id' => 'postex#reply_create'
  post '/reply/update/:reply_id' => 'postex#reply_update'
  get '/reply/update_form/:reply_id' => 'postex#reply_update_form'
  get '/reply/delete/:reply_id' => 'postex#reply_delete'
  
end
