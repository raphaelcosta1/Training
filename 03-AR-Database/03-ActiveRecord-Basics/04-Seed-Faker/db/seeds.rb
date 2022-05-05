require "faker"
100.times do
  post = Post.new(
    title: Faker::Commerce.product_name,
    url: Faker::Internet.url,
    votes: (0..1000).to_a.sample
  )
  post.save
end
