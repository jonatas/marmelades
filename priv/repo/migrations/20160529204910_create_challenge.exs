defmodule Marmelades.Repo.Migrations.CreateChallenge do
  use Ecto.Migration

  def change do
    create table(:challenges) do
      add :content, :text

      timestamps
    end

  end
end
