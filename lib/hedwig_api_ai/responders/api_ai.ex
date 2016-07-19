defmodule HedwigApiAi.Responders.ApiAi do
  use Hedwig.Responder

  hear ~r/.*/, message do
    # Call api.ai
    # send message, response
  end
end
