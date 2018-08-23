a = "Activétè"
b = a.gsub(/[^\x00-\x7F]/n,'').downcase.to_s
puts b
