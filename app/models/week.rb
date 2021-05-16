class Week < ApplicationRecord
    has_and_belongs_to_many :recipes, association_foreign_key: "recipe_id", join_table: "recipes_weeks"

    def total_pages
      (Week.all.count.to_f / 7).ceil
    end
end
