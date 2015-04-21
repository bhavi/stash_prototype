json.array!(@institutions) do |institution|
  json.extract! institution, :id, :abbreviation, :short_name, :long_name, :landing_page, :external_id_strip, :campus, :url, :url_text, :logo
  json.url institution_url(institution, format: :json)
end
