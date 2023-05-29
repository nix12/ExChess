defmodule ExChessWeb.Boards do
  use ExChessWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="flex flex-row bg-blue-300 h-80 w-80 justify-center items-center">
      <div class="grid grid-cols-8 grid-rows-8 gap-0">
        <%= for {location, _occupant} = square <- @board do %>
          <.live_component module={ExChessWeb.Square} id={location} square={square} location={location} />
        <% end %>
      </div>
    </div>
    """
  end
end
