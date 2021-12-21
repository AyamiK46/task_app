class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :start
      t.date :end
      t.boolean :all_day
      t.text :memo

      t.timestamps
    end
  end
end
