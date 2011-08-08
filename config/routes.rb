EdPortal::Application.routes.draw do
    root :to => "home#index"
    get "home/process_login"
    post "home/process_login"
    get "home/logout"
    post "home/logout"
    get "teacher/tHome"
    post "teacher/tHome"
    get "student/sHome"
    post "student/sHome"
    get "home/change_password"
    post "home/change_password"
    get "home/chpass_process"
    post "home/chpass_process"
    get "student/updateInfo"
    post "student/updateInfo"
    get "student/update_process"
    post "student/update_process"
    put "student/update_process"
    get "teacher/updateInfo"
    post "teacher/updateInfo"
    get "teacher/update_process"
    post "teacher/update_process"
    put "teacher/update_process"
    get "teacher/showInfo"
    post "teacher/showInfo"
    get "student/showInfo"
    post "student/showInfo"
    get "course/new"
    post "course/new"
    get "course/create"
    post "course/create"
    get "course/list"
    post "course/list"
    get "course/show"
    post "course/show"
    get "course/edit"
    post "course/edit"
    get "course/destroy"
    post "course/destroy"
    get "updownload/newAssgn"
    post "updownload/newAssgn"
    get "updownload/newMaterial"
    post "updownload/newMaterial"
    get "updownload/newTest"
    post "updownload/newTest"
    get "updownload/addNewAssgn"
    post "updownload/addNewAssgn"


    

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
