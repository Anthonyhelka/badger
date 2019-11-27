class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :servers, :name, unique: true
  end
end
