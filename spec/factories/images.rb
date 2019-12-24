FactoryBot.define do
  
  factory :image do
    image  { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/pika2.jpg')) }
    item
  end
end