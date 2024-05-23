module ApplicationHelper
  include Pagy::Frontend

  def current_year
    Date.current.year
  end

  def github_url(author, repo, *additional_classes)
    default_classes = ['footer-link']
    all_classes = default_classes + additional_classes

    link_to 'TeachInterrogate', "https://github.com/#{author}/#{repo}",
            target: '_blank', rel: 'nofollow noopener', class: all_classes.join(' ')
  end

  def full_title(page_title)
    base_title = 'TeachInterrogate'

    if page_title.present?
      "#{base_title} | #{t("title_helper.#{page_title}")}"
    else
      base_title
    end
  end

  def pagination(obj)
    # rubocop:disable Rails/OutputSafety
    raw(pagy_bootstrap_nav(obj)) if obj.pages > 1
    # rubocop:enable Rails/OutputSafety
  end

  def pagination?(obj)
    obj.pages > 1
  end
end
