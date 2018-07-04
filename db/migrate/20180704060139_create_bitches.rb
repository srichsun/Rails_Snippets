class CreateBitches < ActiveRecord::Migration[5.2]
  def change
    create_table :bitches do |t|
      t.string :name
      t.text :bio
      t.date :birthday

      t.timestamps
    end
  end
end
