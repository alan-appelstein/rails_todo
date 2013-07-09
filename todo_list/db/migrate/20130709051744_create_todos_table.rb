class CreateTodosTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :name
      t.string :owner
      t.string :start_date
      t.string :end_datae
      t.string :status
      t.timestamps
    end
  end

  def down
    drop_table :todos
  end
end
