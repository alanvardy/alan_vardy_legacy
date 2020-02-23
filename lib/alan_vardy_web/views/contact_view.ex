defmodule AlanVardyWeb.ContactView do
  use AlanVardyWeb, :view

  @spec production? :: boolean
  def production? do
    Application.get_env(:alan_vardy, :env) == :prod
  end
end
