json.array! @activities do |activity|
  json.id activity.id
  json.contentType activity.content_type

  json.content do
    json.partial! activity.content
  end

  json.createdAt activity.created_at
end
