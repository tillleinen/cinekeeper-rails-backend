class AddUrlToClient < ActiveRecord::Migration
  def change
    add_column :clients, :url, :string
  end
end
