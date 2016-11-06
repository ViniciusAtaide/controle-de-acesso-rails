class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors  do |t|
      t.string :nome
      t.string :documento
      t.string :avatar
      t.boolean :in_building

      t.timestamps
    end
  end
end