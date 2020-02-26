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
end
