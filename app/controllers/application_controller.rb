class ApplicationController < ActionController::API
=begin
  after_action :cors_set_access_control_headers

  def cors_set_access_control_headers

    if  ENV['RAILS_ENV'] == production
      headers['Access-Control-Allow-Origin'] = 'https://tiger-mountain.herokuapp.com'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    else
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    end

  end
=end
end
