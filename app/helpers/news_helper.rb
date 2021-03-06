module NewsHelper
  def display_index_news_links(news)
    capture do
      concat link_to('Preberi več', news, class: 'streched-link')
    end
  end

  def display_show_news_links(news)
    capture do
      if current_user == news.user
        concat link_to 'Izbriši', news, method: :delete, data: { confirm: 'Are you sure?' }
        concat ' | '
        concat link_to 'Uredi', edit_news_path(news)
        concat ' | '
      end
      concat link_to 'Back', news_path
    end
  end
end
