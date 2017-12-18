require 'httparty'
# exercise 1
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards_json["objects"].each do |ward|
  puts ward["name"]
end
puts "~" * 15
# exercise 2
postal_codes_response = HTTParty.get('https://represent.opennorth.ca/postcodes/M5H4E6/')

postal_code_json = JSON.parse(postal_codes_response.body)

postal_code_json["representatives_centroid"].each do |district|
  puts district["district_name"]
end
