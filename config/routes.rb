# frozen_string_literal: true

Rails.application.routes.draw do
  root 'vacancies#index'

  resources :vacancies do
    resources :questions, shallow: true

    get 'filter_by_tag', on: :member
    get 'tags/:tag_id', to: 'vacancies#show', on: :member, as: :tags, constraints: { tag_id: /\d+/ }
  end
end
