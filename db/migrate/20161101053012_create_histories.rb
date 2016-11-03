class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
			t.string :nome
			t.date :data
			t.string :motivo
			t.references :gabinete
			t.string :tipo
      t.timestamps null: false
    end
  end
end
