class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |table|
      table.string :first_name
      table.string :last_name
    end
  end
end
