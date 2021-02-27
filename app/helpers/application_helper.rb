module ApplicationHelper
  def display_navbar_options
    html = link_to "Domov", root_path
    html += link_to "Prijava", new_user_session_path unless user_signed_in?
    html += link_to "Registracija", new_user_registration_path unless user_signed_in?
    html += link_to "Odjava", destroy_user_session_path, method: :delete if user_signed_in?
    html.html_safe
  end
end
