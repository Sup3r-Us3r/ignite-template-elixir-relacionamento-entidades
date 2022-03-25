defmodule Exmeal.Users.Get do
  alias Exmeal.{Error, User, Repo}

  def by_id(id) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build("User not found", :not_found)}
      user -> {:ok, user}
    end
  end
end
