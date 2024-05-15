module ApplicationHelper
  def current_year
    Date.current.year
  end

  def github_url(author, repo, *additional_classes)
    default_classes = ['footer-link']
    all_classes = default_classes + additional_classes

    link_to 'TeachInterrogate', "https://github.com/#{author}/#{repo}",
            target: '_blank', rel: 'nofollow', class: all_classes.join(' ')
  end

  def full_title(page_title)
    base_title = 'TeachInterrogate'

    if page_title.present?
      "#{base_title} | #{t("title_helper.#{page_title}")}"
    else
      base_title
    end
  end
end
