class CreateParticles < ActiveRecord::Migration[6.1]
  def change
    create_table :particles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :password
      t.string :mobile_number

      t.timestamps
    end
  end
end
