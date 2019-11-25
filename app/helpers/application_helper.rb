module ApplicationHelper
  def bootstrap_class_for flash_type
    case flash_type.to_sym

    when :success
      "alert-success"
    when :error
      "alert-danger"
    when :notice
      "alert-info"
    when :alert
      "alert-danger"
    when :warning
      "alert-warning"
    else
      "alert-#{flash_type.to_s}"
    end
  end

  def display_name_with_avatar(user, name_width='w-32')
    html = <<-HTML
      <div class="flex items-center">
        <div class="user-image mr-2 w-10 inline-block">
        #{ image_tag api_avatar_url(user, 50), class: "w-full rounded-circle mr-2"}
        </div>
        <div class="#{name_width} truncate ">
          #{user.name}
         </div>
      </div>
    HTML

   html.html_safe
  end

  def api_avatar_url(user, size)
    if user.avatar.attached?
      user.avatar.variant(combine_options: { resize:"#{size}x#{size}!", extent: "#{size}x#{size}", gravity: "center"})
    else
     asset_path('user-img.svg')
    end
  end

  def display_date date
    if date.present?
      date.try(:strftime, "%d %B, %Y") rescue 'N/A'
    else
      ''
    end
  end

  def display_date_time date
    if date.present?
      date.try(:strftime, "%d %B, %Y %H:%M:%S") rescue 'N/A'
    else
      ''
    end
  end
end
