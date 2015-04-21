class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :institution_id
      t.string :provider
      t.string :uid
      t.string :external_id
      t.string :oauth_token

      t.timestamps null: false
    end
  end
end
