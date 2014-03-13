class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :email
      t.string :name
      t.string :message
      t.string :phone

      t.timestamps
    end
  end
end
