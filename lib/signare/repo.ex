defmodule Signare.Repo do
  use Ecto.Repo,
    otp_app: :signare,
    adapter: Ecto.Adapters.Postgres
end
