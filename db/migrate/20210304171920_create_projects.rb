class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :desription, null: false
      t.date :started_at
      t.date :ended_at
      t.integer :status, default:0, null: false

      t.timestamps
    end
  end
end
