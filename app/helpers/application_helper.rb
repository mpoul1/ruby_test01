module ApplicationHelper
  def active_link_to (text, href, class_name ="")
    if current_page?(href) == true
      "<li class='active'><a href='#{href}' class='#{class_name}'>#{text}<span class='sr-only'>(current)</span></a></li>".html_safe
    else
      "<li><a href='#{href}' class='#{class_name}'>#{text}</a></li>".html_safe
    end

  end
end
