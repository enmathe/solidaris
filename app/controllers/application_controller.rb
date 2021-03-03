class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def default_url_options
    { host: ENV['HOST'] || 'localhost:3000' }
  end
end

xoxb-273594203944-FGqddMF1t18v8N7Oq4i59vs2
