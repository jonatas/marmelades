defmodule Marmelades.Challenge do
  use Marmelades.Web, :model

  schema "challenges" do
    field :content, :string

    timestamps
  end

  @required_fields ~w(content)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def run(challenge) do
    try do
      Code.eval_string(challenge.content) |> inspect
    rescue
      e -> Error
      e |> inspect
    end
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
