Rails.application.routes.draw do
  resources :user_tests
  resources :answers
  resources :questions
  resources :tests
  resources :clinical_trials
  resources :videos
  resources :skin_diets
  resources :learning_modules
  # devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :profiles
  # You can have the root of your site routed with "root"
  root 'learning_modules#index'

  devise_for :users, controllers: {
         registrations: 'my_devise/registrations'
       }

   get 'questions/test_submission' => 'questions#test_submission'    
   get 'libraries' => 'pages#libraries'

   get 'admin/show'

   namespace :admin do
    resources :clinical_trials
    resources :learning_modules
    resources :videos
    resources :skin_diets
    resources :tests
   end 
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
