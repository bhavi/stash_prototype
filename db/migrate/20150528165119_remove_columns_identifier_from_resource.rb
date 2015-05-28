class RemoveColumnsIdentifierFromResource < ActiveRecord::Migration
  def change
    change_table :resources do |t|
      t.remove :identifier
      t.remove :identifierType
    end
  end
end