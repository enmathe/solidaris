module ApplicationHelper

  def svg_tag(name)
    file_path = "#{Rails.root}/db/fixtures/picto/#{name}.svg"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end

end
