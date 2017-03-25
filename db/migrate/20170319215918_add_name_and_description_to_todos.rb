class AddNameAndDescriptionToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :name, :string
    add_column :todos, :description, :text
  end
end
