module ApplicationHelper
  def svg_tag(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    return File.read(file_path).html_safe
  end

  def svg_div(category)
    return content_tag(:div, svg_tag(category), class: ["gradient-general", "gradient-#{category.downcase}", "svg-white"])
  end

  def show_svg_div(category)
    return content_tag(:div, svg_tag(category), class: ["show-gradient-general", "gradient-#{category.downcase}", "show-svg-white"])
  end

  def normalize_name(name)
    return name.downcase
               .gsub(/[àáâãäå]/,'a')
               .gsub(/[ûùüúū]/,'u')
               .gsub(/[ôööòóõøō]/,'o')
               .gsub(/æ/,'ae')
               .gsub(/œ/,'oe')
               .gsub(/ç/, 'c')
               .gsub(/[èéêë]/,'e')
               .gsub(/[\'\" ]/,'_')
  end

  def mini_svg_div(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    svg_file_path = File.read(file_path).html_safe

    return content_tag(:div, svg_file_path, class: ["fill-gradient-#{category.downcase}", "mini-svg-white"])
  end

  def index_svg_div(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    svg_file_path = File.read(file_path).html_safe

    return content_tag(:div, svg_file_path, class: ["fill-gradient-#{category.downcase}", "show-svg-white"])
  end

  def form_svg_div(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    svg_file_path = File.read(file_path).html_safe

    return content_tag(:div, svg_file_path, class: ["fill-gradient-#{category.downcase}", "form-svg"])
  end

  def white_form_svg_div(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    svg_file_path = File.read(file_path).html_safe

    return content_tag(:div, svg_file_path, class: ["form-svg-white"])
  end

  def white_svg_div(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    svg_file_path = File.read(file_path).html_safe

    return content_tag(:div, svg_file_path, class: ["white-svg-white"])
  end

  def current_class?(test_path)
    return 'active' if request.path == test_path
  end

end

