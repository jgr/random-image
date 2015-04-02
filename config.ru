# Redirect to a Random image on wtf.james.wtf

def random_image
  "steve_holt.jpg"
end

run Proc.new { |env|
  image_url = "https://wtf.james.wtf/#{random_image}"

  [303, { "Location" => image_url }, ["Redirecting you, hold on tight!"]]
}
