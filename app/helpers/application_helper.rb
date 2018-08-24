module ApplicationHelper
  def svg_tag(category)
    file_path = "#{Rails.root}/db/fixtures/picto/#{category.downcase}.svg"
    return File.read(file_path).html_safe
  end

  def svg_div(category)
    return content_tag(:div, svg_tag(category), class: ["gradient-general", "gradient-#{category.downcase}", "svg-white"])
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
end

