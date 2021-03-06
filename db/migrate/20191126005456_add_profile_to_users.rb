# frozen_string_literal: true

class AddProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :postcode, :integer
    add_column :users, :address, :string
    add_column :users, :biography, :text
  end
end
