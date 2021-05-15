class Recipe < ApplicationRecord
  has_and_belongs_to_many :weeks, association_foreign_key: "week_id", join_table: "recipes_weeks"

  def total_pages
    (Recipe.all.count.to_f / 6).ceil
  end

end
