class AddColumnEnvAndTypeToPush < ActiveRecord::Migration[5.0]
  def change
    add_column :pushes, :env, :string
    add_column :pushes, :test_type, :string
  end
end
