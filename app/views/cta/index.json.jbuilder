json.array!(@cta) do |ctum|
  json.extract! ctum, :id, :cta1_header, :cta1_caption, :cta1_url, :cta1_button, :cta2_header, :cta2_caption, :cta2_url, :cta2_button, :cta3_header, :cta3_caption, :cta3_url, :cta3_button
  json.url ctum_url(ctum, format: :json)
end
