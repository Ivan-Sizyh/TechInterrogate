Rails.application.routes.draw do
  root to: 'vacancies#index'

  resources :users, only: %i[new create]

  resources :interviews

  resources :vacancies do
    resources :questions, shallow: true

    get 'filter_by_tag', on: :member
    get 'tags/:tag_id', to: 'vacancies#show', on: :member, as: :tags, constraints: { tag_id: /\d+/ }
  end
end
