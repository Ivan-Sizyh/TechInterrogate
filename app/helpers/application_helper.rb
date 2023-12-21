# frozen_string_literal: true

module ApplicationHelper # rubocop:disable Style/Documentation
  def current_year
    Date.current.year
  end

  def github_url(author, repo, *additional_classes)
    default_classes = ['footer-link']
    all_classes = default_classes + additional_classes

    link_to 'TeachInterrogate', "https://github.com/#{author}/#{repo}",
            target: '_blank', rel: 'nofollow', class: all_classes.join(' ')
  end
end
