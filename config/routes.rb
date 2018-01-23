Rails.application.routes.draw do
  get 'page_generator_controller/home'

  get 'page_generator_controller/about'

  get 'page_generator_controller/contact'

  get 'page_generator_controller/faq'

  get 'page_generator_controller/archive'

  resources :homework_blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
