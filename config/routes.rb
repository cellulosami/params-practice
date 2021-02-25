Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/name" => "params#name"
    get "/guess_a_number" => "params#guess_a_number"
    get "/guess_a_number/:guess" => "params#guess_a_number"
    post "/guess_a_number" => "params#guess_a_number"
    post "/login" => "params#login"
  end
end
