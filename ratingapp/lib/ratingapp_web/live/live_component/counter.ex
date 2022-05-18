defmodule RatingappWeb.CounterLive.LiveComponent.Counter do
  use Phoenix.LiveComponent
  def render(assigns) do
    ~H"""
    <div>
    <p> LiveComponent <%= @content %> </p>
    <button phx-click="rest"  :on-click={"Reset"}>Reseat </button>
    </div>
    """
  end
  def update(assigns, socket) do

   {:ok, assign(socket, :content, assigns.content)}
  end

  def handle_event("Reset", _meta, socket) do
    {:noreply, assign(socket, count: 0)}
  end
end
