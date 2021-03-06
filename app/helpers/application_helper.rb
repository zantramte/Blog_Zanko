module ApplicationHelper
  def display_session_links
    capture do
      if user_signed_in?
        concat link_to "Uredi profil", edit_user_registration_path
        concat " "
        concat link_to "Odjava", destroy_user_session_path, method: :delete, class: 'btn btn-sm btn-outline-secondary'
      else
        concat link_to "Prijava", new_user_session_path
        concat " "
        concat link_to "Registracija", new_user_registration_path
        concat " "
      end
    end
  end
end
<a class="link-secondary" href="#" aria-label="Search">
  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img" viewBox="0 0 24 24"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"></circle><path d="M21 21l-5.2-5.2"></path></svg>
</a>
<a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a>
