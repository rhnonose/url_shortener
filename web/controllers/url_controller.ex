defmodule UrlShortener.UrlController do
  use UrlShortener.Web, :controller
  import HTTPotion

  def index(conn, %{"longUrl" => longUrl}) do
    json(conn, longUrl)
  end

  def show(conn, _params) do
    json(conn, [%{title: "title1", text: "text1"}, %{title: "title2", text: "text2"}])
  end

end
