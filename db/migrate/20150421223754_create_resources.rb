class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :identifier
      t.string :identifierType
      t.integer :user_id
      t.string :local_id

      t.timestamps null: false
    end
  end
end
