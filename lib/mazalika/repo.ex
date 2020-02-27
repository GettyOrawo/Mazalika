defmodule Mazalika.Repo do
  use Ecto.Repo,
    otp_app: :mazalika,
    adapter: Ecto.Adapters.Postgres
end
