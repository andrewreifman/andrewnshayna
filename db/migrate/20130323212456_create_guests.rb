class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.boolean :attending
      t.integer :guests
      t.string :guest_names
      t.timestamps
    end
  end
end
