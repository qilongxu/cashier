use Mix.Config

config :cashier,
  defaults: [
    gateway: :test,
    currency: "USD"
  ]