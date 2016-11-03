class CreateGabinetes < ActiveRecord::Migration
  def change
    create_table :gabinetes do |t|
      t.string :procurador

      t.timestamps null: false
    end
  end
end
