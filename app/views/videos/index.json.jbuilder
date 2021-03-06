json.array!(@videos) do |video|
  json.extract! video, :id, :title, :link, :image
  json.url video_url(video, format: :json)
end
