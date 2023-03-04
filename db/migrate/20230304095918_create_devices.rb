class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.integer :volt
      t.integer :count
      t.integer :cost 
      t.timestamps
    end
  end
end
