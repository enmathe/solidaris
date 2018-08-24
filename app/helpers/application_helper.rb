module ApplicationHelper

  def svg_div(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    svg_file_path = File.read(file_path).html_safe

    return content_tag(:div, svg_file_path, class: ["gradient-general", "gradient-#{category.downcase}", "svg-white"])
  end

  def mini_svg_div(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    svg_file_path = File.read(file_path).html_safe

    return content_tag(:div, svg_file_path, class: ["fill-gradient-#{category.downcase}", "mini-svg-white"])
  end
end
