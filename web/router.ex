defmodule UrlShortener.Router do
  use UrlShortener.Web, :router

  pipeline :api do
    plug CORSPlug, [origin: "https://compose.mixmax.com"]
  end

  scope "/api", UrlShortener do
    pipe_through :api
    get "/urlshortener", UrlController, :index
    get "/typeahead", UrlController, :show
    options "/urlshortener", UrlController, :options
    options "/typeahead", UrlController, :options
  end

end
