module PostsHelper
  def display_post_links(post)
    html = "<td>#{link_to 'Show', post}</td>"
    html += "<td>#{link_to 'Edit', edit_post_path(post) if current_user == post.user}</td>"
    html += "<td>#{link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' } if current_user == post.user}</td>"
    html.html_safe
  end
end
