defmodule HedwigApiAi.Call do
  use GenServer

  ## Client API

  @doc """
  Starts the registry.
  """
  def start_link do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_call({:query, message}, _from, _opts) do
    return = ApiAi.text_request(Map.get(message, :text))
    {:reply, {:ok, return}, return}
  end
end
