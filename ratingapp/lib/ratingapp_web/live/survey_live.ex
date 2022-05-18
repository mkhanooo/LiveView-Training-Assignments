defmodule RatingappWeb.SurveyLive do
  use RatingappWeb, :live_view


  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:games, Ratingapp.Catalog.list_games())}
  end

  def handle_info({:created_rating, updated_product, product_index}, socket) do
    {:noreply, handle_rating_created(socket, updated_product, product_index)}
  end

  def handle_rating_created(
        %{assigns: %{products: products}} = socket,
        updated_product,
        product_index
      ) do
    socket
    |> put_flash(:info, "Rating submitted successfully")
    |> assign(
      :products,
      List.replace_at(products, product_index, updated_product)
    )
  end
end
