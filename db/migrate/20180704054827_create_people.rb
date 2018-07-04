class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :gender
      t.string :color

      t.timestamps
    end
  end
end
