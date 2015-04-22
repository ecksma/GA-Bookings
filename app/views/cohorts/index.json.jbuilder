json.array!(@cohorts) do |cohort|
  json.extract! cohort, :id, :name, :start_date, :end_date
  json.url cohort_url(cohort, format: :json)
end
