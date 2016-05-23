json.array!(@clinical_trials) do |clinical_trial|
  json.extract! clinical_trial, :id, :title, :image, :pdf
  json.url clinical_trial_url(clinical_trial, format: :json)
end
