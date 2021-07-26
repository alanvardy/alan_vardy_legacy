defmodule AlanVardyWeb.ContactControllerTest do
  use AlanVardyWeb.ConnCase

  test "new", %{conn: conn} do
    conn = get(conn, Routes.contact_path(conn, :new))
    assert html_response(conn, 200) =~ "Guilherme Stecanella"
  end
end
