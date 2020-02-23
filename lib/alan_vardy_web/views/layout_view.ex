defmodule AlanVardyWeb.LayoutView do
  use AlanVardyWeb, :view

  def production? do
    Application.get_env(:alan_vardy, :env) == :prod
  end
end
