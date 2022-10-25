module ApplicationHelper
  def match_user(user)
    user == current_user ? true : false
  end
end
