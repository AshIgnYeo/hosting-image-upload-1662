require 'open-uri'

Article.destroy_all

article = Article.new(
  title: 'seeded images',
  body: 'how to seed images to cloudinary'
)

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
filepath = Rails.root.join('app', 'assets','images','sample.png')


article.photo.attach(
  io: File.open(filepath),
  filename: 'perplexity.png',
  content_type: 'image/png'
)

article.save!
