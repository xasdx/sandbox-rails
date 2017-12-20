require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module TestObjectFactory
  def t_article
    { title: "hello", body: "there" }
  end
end

class ActiveSupport::TestCase
  include TestObjectFactory
  
  fixtures :all
  
  def default_auth_headers
    { "Authorization" => "Basic #{Base64::encode64('asd:pwd')}" }
  end
end
