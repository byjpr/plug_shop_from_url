defmodule PlugShopFromUrl do
  @moduledoc """
  Loads Shop from URL Params
  """

  @doc false
  def init(opts), do: opts

  @doc false
  def call(%{private: %{shop_origin_type: :url}} = conn, _config) do
    conn
    |> ResourceFromRequest.call(
      type: :url,
      param: "shop",
      private_name: :current_shop_name
    )
  end

  def call(conn, _config), do: conn
end
