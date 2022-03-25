defmodule Exmeal.Users.Create do
  alias Exmeal.{Error, User, Repo}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %User{} = user}), do: {:ok, user}

  defp handle_insert({:error, changeset}) do
    {:error, Error.build(changeset, :bad_request)}
  end
end
