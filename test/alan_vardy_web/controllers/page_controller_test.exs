defmodule AlanVardyWeb.EnControllerTest do
  use AlanVardyWeb.ConnCase

  test "index", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome"
  end
end
