json.array!(@forumms) do |forumm|
  json.extract! forumm, :name, :description
  json.url forumm_url(forumm, format: :json)
end