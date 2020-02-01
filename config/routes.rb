# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  # get 'admin/yazilar  '
  # get 'admin/new'
  # get 'admin/edit'
  # get 'admin/show'
  # get 'admin/delete'
  # get 'hakkimda/show'
  # get 'yazilar/index'
  # get 'yazilar/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#index'
  match ':controller(/:action(/:id))', to: '', via: %i[get post]
  # get ':controller(/:action(/:id))', :via => [:get,:post]
  post ':controller(/:action)', to: 'subjects/create'
  get ':controller(/:action(/:id))', via: :get
  # post ':controller(/:action(/:id))', to: 'subjects/update'
end
