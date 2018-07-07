json.array! @buttons.each do |button|
  json.id button.id
  json.shape button.shape
  json.color button.color
  json.description button.description
  json.image_url button.image_url
  json.created_at button.created_at
  json.updated_at button.updated_at
end