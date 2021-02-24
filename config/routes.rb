Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/fortunes" => "my_examples#random_fortune_method"

    get "/random_numbers" => "my_examples#random_numbers_method"

    get "/page_visits" => "my_examples#page_visits_method"

    get "/99_bottles" => "my_examples#ninety_nine_bottles_method"

    get "/terminal" => "my_examples#terminal_method"
  end
end
