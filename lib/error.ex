defmodule Exmeal.Error do
  @keys [:status, :result]
  @enforce_keys @keys
  defstruct @keys

  def build(result, status) do
    %__MODULE__{
      status: status,
      result: result
    }
  end
end
