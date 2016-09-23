class CreatePushes < ActiveRecord::Migration[5.0]
  def change
    create_table :pushes do |t|
      t.string :generated_time
      t.json :result

      t.timestamps
    end
  end
end
