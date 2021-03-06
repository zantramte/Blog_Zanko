module PostsHelper
  def display_index_post_links(post)
    capture do
      concat link_to('Preberi več', post, class: 'streched-link')
    end
  end

  def display_show_post_links(post)
    capture do
      if current_user == post.user
        concat link_to 'Edit', edit_post_path(post)
        concat ' | '
      end
      concat link_to 'Back', posts_path
    end
  end
end
