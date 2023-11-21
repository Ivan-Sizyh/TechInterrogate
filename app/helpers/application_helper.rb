module ApplicationHelper
  def current_year
    Date.current.year
  end

  def github_url(author, repo)
    link_to 'TeachInterrogate', "https://github.com/#{author}/#{repo}", target: '_blank', rel: 'nofollow', class: 'footer-link'
  end
end
