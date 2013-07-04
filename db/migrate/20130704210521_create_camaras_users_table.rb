class CreateCamarasUsersTable < ActiveRecord::Migration
  def up
  	 create_table :camaras_users, :id => false do |t|
          t.references :camara
          t.foreign_key :camaras
          t.references :user
          t.foreign_key :users
      end
      add_index :camaras_users, [:camara_id, :user_id]
      add_index :camaras_users, [:user_id, :camara_id]
  end

  def down
  	drop_table :camaras_users
  end
end
