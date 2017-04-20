defmodule Cashier.Gateway do
  
  # @type success_resp :: {:ok, result, raw_response}
  
  # @type error_resp :: {:error, reason, raw_response}

  # @callback authorize(opts :: Keyword.t, state :: term) ::
  #   success_resp |
  #   error_resp
  
  # defmacro __using__() do
  #   quote do
  #     @behavior Cashier.Gateway
      
  #     def start_link(state, args) do
  #       Task.start_link(__MODULE__, :call, [args, state])
  #     end
      
  #     def call(args, state) do
  #       #call(args, state)
  #       send()
  #     end
      
  #     defp send do
  #       {:ok, nil, nil}
  #     end
  #   end
  # end
end