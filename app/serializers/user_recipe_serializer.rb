class UserRecipeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :recipe_id, :saved, :created, :used
end
