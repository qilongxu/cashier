defmodule Cashier.Supervisor do
  @moduledoc false
  
  use Supervisor
  
  def start_link do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end
  
  def init([]) do
    children = [
      worker(Cashier.Pipeline.GatewayProducer, []),
      worker(Cashier.Pipeline.GatewayDispatcher, [])
    ]
    
    supervise(children, strategy: :one_for_one)
  end
end