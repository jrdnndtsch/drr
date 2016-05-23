json.array!(@skin_diets) do |skin_diet|
  json.extract! skin_diet, :id, :title
  json.url skin_diet_url(skin_diet, format: :json)
end
