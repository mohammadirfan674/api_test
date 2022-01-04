class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :status
      t.string :qualifications
      t.string :gender
      t.text :description

      t.timestamps
    end
  end
end
