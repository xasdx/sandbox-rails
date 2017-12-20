require 'test_helper'

class ArticlesTest < ActionDispatch::IntegrationTest
  
  test "POST /articles requires authentication" do
    post "/articles", params: {}, as: :json
    assert_response 401
  end
  
  test "POST /articles creates an article" do
    post "/articles",
      params: { article: t_article },
      as: :json,
      headers: default_auth_headers
    assert_response :redirect
  end
end
