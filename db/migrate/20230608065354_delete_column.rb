class DeleteColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :id, :integer
  end
end
