class CreateExms < ActiveRecord::Migration
  def change
    create_table :exms do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
