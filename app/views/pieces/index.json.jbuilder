json.array!(@pieces) do |piece|
  json.extract! piece, :id, :type
  json.url piece_url(piece, format: :json)
end
