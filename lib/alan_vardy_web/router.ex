defmodule AlanVardyWeb.Router do
  use AlanVardyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AlanVardyWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/aboutme", PageController, :aboutme
    get "/blog", PostController, :index
    get "/blog/rss.xml", PostController, :rss
    get "/blog/:page", PostController, :index
    resources "/post", PostController, only: [:show]
    resources "/tag", TagController, only: [:show]
    get "/contact", ContactController, :new
    post "/contact", ContactController, :create
  end

  if Application.get_env(:alan_vardy, :env) === :dev do
    forward("/sent_email", Bamboo.SentEmailViewerPlug)
  end
end
