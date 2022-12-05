class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :task
      t.string :name
      t.string :body
      t.datetime :deadline
      t.string :status

      t.timestamps
    end
  end
end
