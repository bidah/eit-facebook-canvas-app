class FacebookController < ApplicationController
  protect_from_forgery with: :null_session
 
  after_filter :allow_iframe
 
  def canvas 
  end 
 
  def allow_iframe
    response.headers.except! 'X-Frame-Options'
  end 
end
