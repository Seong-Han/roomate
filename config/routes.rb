Rails.application.routes.draw do
   devise_for :users, :controllers => { :registrations => "registrations" } 
  #마이페이지 라우트
  # get '/choice/write/:current_user_id' => 'choice#write'
  get '/mypage/index/:current_user_id' => 'mypage#index'
  
  post 'mypage/profile'
  post 'mypage/create'
  post 'mypage/setting_create'
  # post 'mypage/school_create'

  get 'mypage/edit'

  get 'mypage/delete'

  post 'mypage/update'
  
  get 'mypage/test'
  
  get 'mypage/result'
  
  
  #기본적인 인적사항 만들기
  get 'mypage/core_index'
  post 'mypage/core_create'
  post 'mypage/core_edit'
  

  
  
  #핵심 네브바, 유형별로 탐색하는 거
  root 'main#home'
  get'main/home'
  get 'main/haveroom'
  get 'main/nhaveroom'
  get 'main/school'
  
  #작성한 글 올리고, 내리고
  post 'main/expose'
  post 'main/un_expose'
  
  #문석형이 작업한 라우트
  get 'upload/index'
  get 'upload/write'
  post 'upload/create'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
