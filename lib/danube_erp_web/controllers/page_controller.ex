defmodule DanubeErpWeb.PageController do
  use DanubeErpWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
