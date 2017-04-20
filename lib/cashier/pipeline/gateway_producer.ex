defmodule Cashier.Pipeline.GatewayProducer do
  use GenStage
  
  def start_link do
    GenStage.start_link(__MODULE__, [], name: __MODULE__)
  end
  
  def init(_opts), do: {:producer, []}
  
  def handle_demand(demand, state),
    do: {:noreply, [demand], state}
end