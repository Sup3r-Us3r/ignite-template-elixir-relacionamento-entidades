defmodule Exmeal.Users.Delete do
  alias Exmeal.{Error, User, Repo}

  def call(id) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build("User not found", :not_found)}
      user -> Repo.delete(user)
    end
  end
end
