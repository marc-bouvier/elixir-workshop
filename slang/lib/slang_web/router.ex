defmodule SlangWeb.Router do
  use SlangWeb, :router

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

  scope "/", SlangWeb do
    pipe_through :browser

    get "/", PageController, :index

    resources "/users", UserController

    get "/login", UserController, :login
  end

  # Other scopes may use custom stacks.
  # scope "/api", SlangWeb do
  #   pipe_through :api
  # end
end
