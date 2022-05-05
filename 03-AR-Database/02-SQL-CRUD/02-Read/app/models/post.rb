# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.
class Post
  attr_reader :id, :votes
  attr_accessor :title, :url

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = attributes[:votes]
  end

  def self.find(id)
    query = <<-SQL
    SELECT * FROM posts WHERE id = ?
    SQL
    DB.results_as_hash = true
    # if @id.nil?
    result = DB.execute(query, id).first
    post = Post.new(id: result["id"], title: result["title"], url: result["url"], votes: result["votes"]) if result
    return post
  end

  def self.all
    query = <<-SQL
    SELECT * FROM posts
    SQL
    DB.results_as_hash = true
    result_array = []
    result = DB.execute(query)
    result.each do |post|
      result_array << Post.new(id: post["id"], title: post["title"], url: post["url"], votes: post["votes"])
    end
    return result_array
  end
end
