class CreateWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :weeks do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
