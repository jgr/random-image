# Redirect to a Random image on wtf.james.wtf
require 'aws-sdk'

def random_image
  bucket = Aws::S3::Resource.new.bucket(ENV['S3_BUCKET'])
  bucket.objects.map(&:key).sample
end

run Proc.new { |env|
  image_url = URI.join(ENV['ROOT_URL'], random_image).to_s

  [303, { 'Location' => image_url }, ['Redirecting you, hold on tight!']]
}
