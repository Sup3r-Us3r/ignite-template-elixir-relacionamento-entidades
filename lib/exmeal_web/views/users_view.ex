defmodule ExmealWeb.UsersView do
  use ExmealWeb, :view

  alias Exmeal.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      message: "User created!",
      user: %{
        user: user
      }
    }
  end

  def render("user.json", %{user: %User{} = user}) do
    %{user: user}
  end
end
