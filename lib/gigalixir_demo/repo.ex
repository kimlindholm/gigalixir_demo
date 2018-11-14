defmodule GigalixirDemo.Repo do
  use Ecto.Repo,
    otp_app: :gigalixir_demo,
    adapter: Ecto.Adapters.Postgres
end
