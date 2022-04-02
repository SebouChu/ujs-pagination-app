require 'faker'

50.times do
  article = Article.new(
    title: Faker::Book.title,
    author: Faker::Book.author,
    content: "<div>#{(1..5).map { Faker::Lorem.paragraphs(number: 6).join(' ') }.join('<br>')}</div>"
  )
  article.illustration.attach(
    io: URI.open(Faker::LoremFlickr.image(size: "1280x720")),
    filename: "#{article.title.parameterize}.jpeg",
    content_type: 'image/jpeg'
  )
  article.save
end