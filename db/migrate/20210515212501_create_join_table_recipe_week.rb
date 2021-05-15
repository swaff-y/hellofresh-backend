class CreateJoinTableRecipeWeek < ActiveRecord::Migration[6.1]
  def change
    create_join_table :recipes, :weeks do |t|
      # t.index [:recipe_id, :week_id]
      # t.index [:week_id, :recipe_id]
    end
  end
end
