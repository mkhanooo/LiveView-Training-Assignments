defmodule RatingappWeb.CounterLive.SimpleComponent.Counter do
  use Phoenix.Component

  def show(assigns) do
   ~H"""
    <p>Counte in simple_compoent : <%= @count %></p>
   """
  end
end
