class CreateTodolists < ActiveRecord::Migration[5.0]
  def change
    create_table :todolists do |t|
      t.string :title
      t.date :duedate
      t.text :description

      t.timestamps
    end
  end
end
