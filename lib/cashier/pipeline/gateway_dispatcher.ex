defmodule Cashier.Pipeline.GatewayDispatcher do
  use GenStage
  
  def start_link do
    GenStage.start_link(__MODULE__, [], name: __MODULE__)
  end
  
  def init(_opts) do
    {:producer_consumer, [], dispatcher: GenStage.BroadcastDispatcher, subscribe_to: [Cashier.Pipeline.GatewayProducer]}
  end
  
  def handle_events(demand, _from, state),
    do: {:noreply, demand, state}
end