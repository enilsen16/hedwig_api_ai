defmodule HedwigApiAiTest do
  use ExUnit.Case
  use Hedwig.Adapter

  doctest HedwigApiAi

  setup_all do
    {:ok, registry} = HedwigApiAi.Call.start_link
    msg = %Hedwig.Message{
      ref: make_ref(),
      text: "Hello",
      type: "chat",
      user: "erik"
    }

    {:ok, msg: msg, registry: registry}
  end

  test "send message to api.ai", context do

    msg = context
    |> Map.get(:msg)

    response = context
    |> Map.get(:registry)
    |> HedwigApiAi.query(msg)

    assert {:ok, message} = response
  end
end
