defmodule Cashier do
  @moduledoc """
  This is the Cashier module.
  """
  
  use Application
  
  @doc false
  def start(_type, _args) do
    Cashier.Supervisor.start_link()
  end
end